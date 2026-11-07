.class public final Landroid/media/MediaParser;
.super Ljava/lang/Object;
.source "MediaParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaParser$OutputConsumer;,
        Landroid/media/MediaParser$SeekableInputReader;,
        Landroid/media/MediaParser$InputReadingDataReader;,
        Landroid/media/MediaParser$InputReader;,
        Landroid/media/MediaParser$UnrecognizedInputFormatException;,
        Landroid/media/MediaParser$SeekMap;,
        Landroid/media/MediaParser$ExtractorOutputAdapter;,
        Landroid/media/MediaParser$ParsingException;,
        Landroid/media/MediaParser$SeekPoint;,
        Landroid/media/MediaParser$DataReaderAdapter;,
        Landroid/media/MediaParser$ParsableByteArrayAdapter;,
        Landroid/media/MediaParser$MediaParserDrmInitData;,
        Landroid/media/MediaParser$ExtractorFactory;,
        Landroid/media/MediaParser$DummyExoPlayerSeekMap;,
        Landroid/media/MediaParser$TrackOutputAdapter;,
        Landroid/media/MediaParser$EncryptionDataReadState;,
        Landroid/media/MediaParser$ParameterName;,
        Landroid/media/MediaParser$ParserName;,
        Landroid/media/MediaParser$SampleFlags;,
        Landroid/media/MediaParser$TrackData;
    }
.end annotation


# static fields
.field private static final blacklist BYTES_PER_SUBSAMPLE_ENCRYPTION_ENTRY:I = 0x6

.field private static final blacklist EMPTY_BYTE_ARRAY:[B

.field private static final blacklist EXPECTED_TYPE_BY_PARAMETER_NAME:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist EXTRACTOR_FACTORIES_BY_NAME:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/media/MediaParser$ExtractorFactory;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist JNI_LIBRARY_NAME:Ljava/lang/String; = "mediaparser-jni"

.field private static final blacklist MEDIAMETRICS_DITHER:F = 0.02f

.field private static final blacklist MEDIAMETRICS_ELEMENT_SEPARATOR:Ljava/lang/String; = "|"

.field private static final blacklist MEDIAMETRICS_MAX_STRING_SIZE:I = 0xc8

.field private static final blacklist MEDIAMETRICS_PARAMETER_LIST_MAX_LENGTH:I

.field public static final whitelist PARAMETER_ADTS_ENABLE_CBR_SEEKING:Ljava/lang/String; = "android.media.mediaparser.adts.enableCbrSeeking"

.field public static final whitelist PARAMETER_AMR_ENABLE_CBR_SEEKING:Ljava/lang/String; = "android.media.mediaparser.amr.enableCbrSeeking"

.field public static final blacklist PARAMETER_EAGERLY_EXPOSE_TRACKTYPE:Ljava/lang/String; = "android.media.mediaparser.eagerlyExposeTrackType"

.field public static final blacklist PARAMETER_EXPOSE_CAPTION_FORMATS:Ljava/lang/String; = "android.media.mediaParser.exposeCaptionFormats"

.field public static final blacklist PARAMETER_EXPOSE_CHUNK_INDEX_AS_MEDIA_FORMAT:Ljava/lang/String; = "android.media.mediaParser.exposeChunkIndexAsMediaFormat"

.field public static final blacklist PARAMETER_EXPOSE_DUMMY_SEEKMAP:Ljava/lang/String; = "android.media.mediaparser.exposeDummySeekMap"

.field public static final blacklist PARAMETER_EXPOSE_EMSG_TRACK:Ljava/lang/String; = "android.media.mediaParser.exposeEmsgTrack"

.field public static final whitelist PARAMETER_FLAC_DISABLE_ID3:Ljava/lang/String; = "android.media.mediaparser.flac.disableId3"

.field public static final blacklist PARAMETER_IGNORE_TIMESTAMP_OFFSET:Ljava/lang/String; = "android.media.mediaparser.ignoreTimestampOffset"

.field public static final blacklist PARAMETER_INCLUDE_SUPPLEMENTAL_DATA:Ljava/lang/String; = "android.media.mediaparser.includeSupplementalData"

.field public static final blacklist PARAMETER_IN_BAND_CRYPTO_INFO:Ljava/lang/String; = "android.media.mediaparser.inBandCryptoInfo"

.field public static final whitelist PARAMETER_MATROSKA_DISABLE_CUES_SEEKING:Ljava/lang/String; = "android.media.mediaparser.matroska.disableCuesSeeking"

.field public static final whitelist PARAMETER_MP3_DISABLE_ID3:Ljava/lang/String; = "android.media.mediaparser.mp3.disableId3"

.field public static final whitelist PARAMETER_MP3_ENABLE_CBR_SEEKING:Ljava/lang/String; = "android.media.mediaparser.mp3.enableCbrSeeking"

.field public static final whitelist PARAMETER_MP3_ENABLE_INDEX_SEEKING:Ljava/lang/String; = "android.media.mediaparser.mp3.enableIndexSeeking"

.field public static final whitelist PARAMETER_MP4_IGNORE_EDIT_LISTS:Ljava/lang/String; = "android.media.mediaparser.mp4.ignoreEditLists"

.field public static final whitelist PARAMETER_MP4_IGNORE_TFDT_BOX:Ljava/lang/String; = "android.media.mediaparser.mp4.ignoreTfdtBox"

.field public static final whitelist PARAMETER_MP4_TREAT_VIDEO_FRAMES_AS_KEYFRAMES:Ljava/lang/String; = "android.media.mediaparser.mp4.treatVideoFramesAsKeyframes"

.field public static final blacklist PARAMETER_OVERRIDE_IN_BAND_CAPTION_DECLARATIONS:Ljava/lang/String; = "android.media.mediaParser.overrideInBandCaptionDeclarations"

.field public static final whitelist PARAMETER_TS_ALLOW_NON_IDR_AVC_KEYFRAMES:Ljava/lang/String; = "android.media.mediaparser.ts.allowNonIdrAvcKeyframes"

.field public static final whitelist PARAMETER_TS_DETECT_ACCESS_UNITS:Ljava/lang/String; = "android.media.mediaparser.ts.ignoreDetectAccessUnits"

.field public static final whitelist PARAMETER_TS_ENABLE_HDMV_DTS_AUDIO_STREAMS:Ljava/lang/String; = "android.media.mediaparser.ts.enableHdmvDtsAudioStreams"

.field public static final whitelist PARAMETER_TS_IGNORE_AAC_STREAM:Ljava/lang/String; = "android.media.mediaparser.ts.ignoreAacStream"

.field public static final whitelist PARAMETER_TS_IGNORE_AVC_STREAM:Ljava/lang/String; = "android.media.mediaparser.ts.ignoreAvcStream"

.field public static final whitelist PARAMETER_TS_IGNORE_SPLICE_INFO_STREAM:Ljava/lang/String; = "android.media.mediaparser.ts.ignoreSpliceInfoStream"

.field public static final whitelist PARAMETER_TS_MODE:Ljava/lang/String; = "android.media.mediaparser.ts.mode"

.field public static final whitelist PARSER_NAME_AC3:Ljava/lang/String; = "android.media.mediaparser.Ac3Parser"

.field public static final whitelist PARSER_NAME_AC4:Ljava/lang/String; = "android.media.mediaparser.Ac4Parser"

.field public static final whitelist PARSER_NAME_ADTS:Ljava/lang/String; = "android.media.mediaparser.AdtsParser"

.field public static final whitelist PARSER_NAME_AMR:Ljava/lang/String; = "android.media.mediaparser.AmrParser"

.field public static final whitelist PARSER_NAME_FLAC:Ljava/lang/String; = "android.media.mediaparser.FlacParser"

.field public static final whitelist PARSER_NAME_FLV:Ljava/lang/String; = "android.media.mediaparser.FlvParser"

.field public static final whitelist PARSER_NAME_FMP4:Ljava/lang/String; = "android.media.mediaparser.FragmentedMp4Parser"

.field public static final whitelist PARSER_NAME_MATROSKA:Ljava/lang/String; = "android.media.mediaparser.MatroskaParser"

.field public static final whitelist PARSER_NAME_MP3:Ljava/lang/String; = "android.media.mediaparser.Mp3Parser"

.field public static final whitelist PARSER_NAME_MP4:Ljava/lang/String; = "android.media.mediaparser.Mp4Parser"

.field public static final whitelist PARSER_NAME_OGG:Ljava/lang/String; = "android.media.mediaparser.OggParser"

.field public static final whitelist PARSER_NAME_PS:Ljava/lang/String; = "android.media.mediaparser.PsParser"

.field public static final whitelist PARSER_NAME_TS:Ljava/lang/String; = "android.media.mediaparser.TsParser"

.field public static final whitelist PARSER_NAME_UNKNOWN:Ljava/lang/String; = "android.media.mediaparser.UNKNOWN"

.field public static final whitelist PARSER_NAME_WAV:Ljava/lang/String; = "android.media.mediaparser.WavParser"

.field public static final whitelist SAMPLE_FLAG_DECODE_ONLY:I = -0x80000000

.field public static final whitelist SAMPLE_FLAG_ENCRYPTED:I = 0x40000000

.field public static final whitelist SAMPLE_FLAG_HAS_SUPPLEMENTAL_DATA:I = 0x10000000

.field public static final whitelist SAMPLE_FLAG_KEY_FRAME:I = 0x1

.field public static final whitelist SAMPLE_FLAG_LAST_SAMPLE:I = 0x20000000

.field private static final blacklist STATE_READING_INIT_VECTOR:I = 0x1

.field private static final blacklist STATE_READING_SIGNAL_BYTE:I = 0x0

.field private static final blacklist STATE_READING_SUBSAMPLE_ENCRYPTION_DATA:I = 0x3

.field private static final blacklist STATE_READING_SUBSAMPLE_ENCRYPTION_SIZE:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "MediaParser"

.field private static final blacklist TS_MODE_HLS:Ljava/lang/String; = "hls"

.field private static final blacklist TS_MODE_MULTI_PMT:Ljava/lang/String; = "multi_pmt"

.field private static final blacklist TS_MODE_SINGLE_PMT:Ljava/lang/String; = "single_pmt"


# instance fields
.field private final blacklist mCreatedByName:Z

.field private blacklist mDurationMillis:J

.field private blacklist mEagerlyExposeTrackType:Z

.field private final blacklist mExoDataReader:Landroid/media/MediaParser$InputReadingDataReader;

.field private blacklist mExposeChunkIndexAsMediaFormat:Z

.field private blacklist mExposeDummySeekMap:Z

.field private blacklist mExtractor:Landroid/media/internal/exo/extractor/Extractor;

.field private blacklist mExtractorInput:Landroid/media/internal/exo/extractor/ExtractorInput;

.field private blacklist mIgnoreTimestampOffset:Z

.field private blacklist mInBandCryptoInfo:Z

.field private blacklist mIncludeSupplementalData:Z

.field private blacklist mLastObservedExceptionName:Ljava/lang/String;

.field private blacklist mLogSessionId:Landroid/media/metrics/LogSessionId;

.field private blacklist mLoggedSchemeInitDataCreationException:Z

.field private final blacklist mMuxedCaptionFormats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/internal/exo/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOutputConsumer:Landroid/media/MediaParser$OutputConsumer;

.field private blacklist mParserName:Ljava/lang/String;

.field private final blacklist mParserNamesPool:[Ljava/lang/String;

.field private final blacklist mParserParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPendingExtractorInit:Z

.field private blacklist mPendingSeekPosition:J

.field private blacklist mPendingSeekTimeMicros:J

.field private final blacklist mPositionHolder:Landroid/media/internal/exo/extractor/PositionHolder;

.field private blacklist mReleased:Z

.field private blacklist mResourceByteCount:J

.field private final blacklist mSchemeInitDataConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Landroid/media/DrmInitData$SchemeInitData;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mScratchDataReaderAdapter:Landroid/media/MediaParser$DataReaderAdapter;

.field private final blacklist mScratchParsableByteArrayAdapter:Landroid/media/MediaParser$ParsableByteArrayAdapter;

.field private final blacklist mTrackFormats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/media/internal/exo/Format;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$C3xICVyoAmy2Jd5ZmrYgB0p5WNc(Landroid/media/internal/exo/Format;)Ljava/lang/String;
    .registers 1

    .line 1315
    iget-object p0, p0, Landroid/media/internal/exo/Format;->codecs:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$XnhYnwaGE5kYZHticWrtF8bF5lo(Landroid/media/internal/exo/Format;)Ljava/lang/String;
    .registers 1

    .line 1314
    iget-object p0, p0, Landroid/media/internal/exo/Format;->sampleMimeType:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEagerlyExposeTrackType(Landroid/media/MediaParser;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Landroid/media/MediaParser;->mEagerlyExposeTrackType:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExposeChunkIndexAsMediaFormat(Landroid/media/MediaParser;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Landroid/media/MediaParser;->mExposeChunkIndexAsMediaFormat:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInBandCryptoInfo(Landroid/media/MediaParser;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Landroid/media/MediaParser;->mInBandCryptoInfo:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIncludeSupplementalData(Landroid/media/MediaParser;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Landroid/media/MediaParser;->mIncludeSupplementalData:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOutputConsumer(Landroid/media/MediaParser;)Landroid/media/MediaParser$OutputConsumer;
    .registers 1

    .line 0
    iget-object p0, p0, Landroid/media/MediaParser;->mOutputConsumer:Landroid/media/MediaParser$OutputConsumer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSchemeInitDataConstructor(Landroid/media/MediaParser;)Ljava/lang/reflect/Constructor;
    .registers 1

    .line 0
    iget-object p0, p0, Landroid/media/MediaParser;->mSchemeInitDataConstructor:Ljava/lang/reflect/Constructor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScratchDataReaderAdapter(Landroid/media/MediaParser;)Landroid/media/MediaParser$DataReaderAdapter;
    .registers 1

    .line 0
    iget-object p0, p0, Landroid/media/MediaParser;->mScratchDataReaderAdapter:Landroid/media/MediaParser$DataReaderAdapter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScratchParsableByteArrayAdapter(Landroid/media/MediaParser;)Landroid/media/MediaParser$ParsableByteArrayAdapter;
    .registers 1

    .line 0
    iget-object p0, p0, Landroid/media/MediaParser;->mScratchParsableByteArrayAdapter:Landroid/media/MediaParser$ParsableByteArrayAdapter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTrackFormats(Landroid/media/MediaParser;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Landroid/media/MediaParser;->mTrackFormats:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDurationMillis(Landroid/media/MediaParser;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Landroid/media/MediaParser;->mDurationMillis:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetMediaParserFlags(Landroid/media/MediaParser;I)I
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Landroid/media/MediaParser;->getMediaParserFlags(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mtoFrameworkDrmInitData(Landroid/media/MediaParser;Landroid/media/internal/exo/drm/DrmInitData;)Landroid/media/DrmInitData;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Landroid/media/MediaParser;->toFrameworkDrmInitData(Landroid/media/internal/exo/drm/DrmInitData;)Landroid/media/DrmInitData;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetEMPTY_BYTE_ARRAY()[B
    .registers 1

    .line 0
    sget-object v0, Landroid/media/MediaParser;->EMPTY_BYTE_ARRAY:[B

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smtoByteBuffer([I)Ljava/nio/ByteBuffer;
    .registers 1

    .line 0
    invoke-static {p0}, Landroid/media/MediaParser;->toByteBuffer([I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smtoByteBuffer([J)Ljava/nio/ByteBuffer;
    .registers 1

    .line 0
    invoke-static {p0}, Landroid/media/MediaParser;->toByteBuffer([J)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smtoMediaFormat(Landroid/media/internal/exo/Format;)Landroid/media/MediaFormat;
    .registers 1

    .line 0
    invoke-static {p0}, Landroid/media/MediaParser;->toMediaFormat(Landroid/media/internal/exo/Format;)Landroid/media/MediaFormat;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smtoSeekPoint(Landroid/media/internal/exo/extractor/SeekPoint;)Landroid/media/MediaParser$SeekPoint;
    .registers 1

    .line 0
    invoke-static {p0}, Landroid/media/MediaParser;->toSeekPoint(Landroid/media/internal/exo/extractor/SeekPoint;)Landroid/media/MediaParser$SeekPoint;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smtoTypeString(I)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Landroid/media/MediaParser;->toTypeString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    const/4 v0, 0x0

    .line 901
    new-array v1, v0, [B

    sput-object v1, Landroid/media/MediaParser;->EMPTY_BYTE_ARRAY:[B

    .line 2228
    const-string v1, "mediaparser-jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 2231
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2234
    new-instance v2, Landroid/media/MediaParser$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/media/MediaParser$$ExternalSyntheticLambda0;-><init>()V

    const-string v3, "android.media.mediaparser.MatroskaParser"

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2235
    new-instance v2, Landroid/media/MediaParser$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Landroid/media/MediaParser$$ExternalSyntheticLambda7;-><init>()V

    const-string v3, "android.media.mediaparser.FragmentedMp4Parser"

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2236
    new-instance v2, Landroid/media/MediaParser$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Landroid/media/MediaParser$$ExternalSyntheticLambda8;-><init>()V

    const-string v3, "android.media.mediaparser.Mp4Parser"

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2237
    new-instance v2, Landroid/media/MediaParser$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Landroid/media/MediaParser$$ExternalSyntheticLambda9;-><init>()V

    const-string v3, "android.media.mediaparser.Mp3Parser"

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2238
    new-instance v2, Landroid/media/MediaParser$$ExternalSyntheticLambda10;

    invoke-direct {v2}, Landroid/media/MediaParser$$ExternalSyntheticLambda10;-><init>()V

    const-string v3, "android.media.mediaparser.AdtsParser"

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2239
    new-instance v2, Landroid/media/MediaParser$$ExternalSyntheticLambda11;

    invoke-direct {v2}, Landroid/media/MediaParser$$ExternalSyntheticLambda11;-><init>()V

    const-string v3, "android.media.mediaparser.Ac3Parser"

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2240
    new-instance v2, Landroid/media/MediaParser$$ExternalSyntheticLambda12;

    invoke-direct {v2}, Landroid/media/MediaParser$$ExternalSyntheticLambda12;-><init>()V

    const-string v3, "android.media.mediaparser.TsParser"

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2241
    new-instance v2, Landroid/media/MediaParser$$ExternalSyntheticLambda13;

    invoke-direct {v2}, Landroid/media/MediaParser$$ExternalSyntheticLambda13;-><init>()V

    const-string v3, "android.media.mediaparser.FlvParser"

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2242
    new-instance v2, Landroid/media/MediaParser$$ExternalSyntheticLambda14;

    invoke-direct {v2}, Landroid/media/MediaParser$$ExternalSyntheticLambda14;-><init>()V

    const-string v3, "android.media.mediaparser.OggParser"

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2243
    new-instance v2, Landroid/media/MediaParser$$ExternalSyntheticLambda15;

    invoke-direct {v2}, Landroid/media/MediaParser$$ExternalSyntheticLambda15;-><init>()V

    const-string v3, "android.media.mediaparser.PsParser"

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2244
    new-instance v2, Landroid/media/MediaParser$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/media/MediaParser$$ExternalSyntheticLambda1;-><init>()V

    const-string v3, "android.media.mediaparser.WavParser"

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2245
    new-instance v2, Landroid/media/MediaParser$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/media/MediaParser$$ExternalSyntheticLambda2;-><init>()V

    const-string v3, "android.media.mediaparser.AmrParser"

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2246
    new-instance v2, Landroid/media/MediaParser$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Landroid/media/MediaParser$$ExternalSyntheticLambda3;-><init>()V

    const-string v3, "android.media.mediaparser.Ac4Parser"

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2247
    new-instance v2, Landroid/media/MediaParser$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Landroid/media/MediaParser$$ExternalSyntheticLambda4;-><init>()V

    const-string v3, "android.media.mediaparser.FlacParser"

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2248
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Landroid/media/MediaParser;->EXTRACTOR_FACTORIES_BY_NAME:Ljava/util/Map;

    .line 2250
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2251
    const-string v2, "android.media.mediaparser.adts.enableCbrSeeking"

    const-class v3, Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2252
    const-string v2, "android.media.mediaparser.amr.enableCbrSeeking"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2253
    const-string v2, "android.media.mediaparser.flac.disableId3"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2254
    const-string v2, "android.media.mediaparser.mp4.ignoreEditLists"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2255
    const-string v2, "android.media.mediaparser.mp4.ignoreTfdtBox"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2256
    const-string v2, "android.media.mediaparser.mp4.treatVideoFramesAsKeyframes"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2258
    const-string v2, "android.media.mediaparser.matroska.disableCuesSeeking"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2259
    const-string v2, "android.media.mediaparser.mp3.disableId3"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2260
    const-string v2, "android.media.mediaparser.mp3.enableCbrSeeking"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2261
    const-string v2, "android.media.mediaparser.mp3.enableIndexSeeking"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2262
    const-string v2, "android.media.mediaparser.ts.mode"

    const-class v4, Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2263
    const-string v2, "android.media.mediaparser.ts.allowNonIdrAvcKeyframes"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2264
    const-string v2, "android.media.mediaparser.ts.ignoreAacStream"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2265
    const-string v2, "android.media.mediaparser.ts.ignoreAvcStream"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2266
    const-string v2, "android.media.mediaparser.ts.ignoreSpliceInfoStream"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2267
    const-string v2, "android.media.mediaparser.ts.ignoreDetectAccessUnits"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2268
    const-string v2, "android.media.mediaparser.ts.enableHdmvDtsAudioStreams"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2269
    const-string v2, "android.media.mediaparser.inBandCryptoInfo"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2270
    const-string v2, "android.media.mediaparser.includeSupplementalData"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2271
    const-string v2, "android.media.mediaparser.ignoreTimestampOffset"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2272
    const-string v2, "android.media.mediaparser.eagerlyExposeTrackType"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2273
    const-string v2, "android.media.mediaparser.exposeDummySeekMap"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2274
    const-string v2, "android.media.mediaParser.exposeChunkIndexAsMediaFormat"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2276
    const-string v2, "android.media.mediaParser.overrideInBandCaptionDeclarations"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2278
    const-string v2, "android.media.mediaParser.exposeEmsgTrack"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2283
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/media/MediaParser$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Landroid/media/MediaParser$$ExternalSyntheticLambda5;-><init>()V

    .line 2284
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 2285
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v3, Landroid/media/MediaParser$$ExternalSyntheticLambda6;

    invoke-direct {v3}, Landroid/media/MediaParser$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v2, v0, v3}, Ljava/util/stream/Stream;->reduce(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x2e

    .line 2289
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    add-int/2addr v0, v2

    sput v0, Landroid/media/MediaParser;->MEDIAMETRICS_PARAMETER_LIST_MAX_LENGTH:I

    .line 2291
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/media/MediaParser;->EXPECTED_TYPE_BY_PARAMETER_NAME:Ljava/util/Map;

    return-void
.end method

.method private varargs constructor blacklist <init>(Landroid/media/MediaParser$OutputConsumer;Z[Ljava/lang/String;)V
    .registers 6

    .line 1367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1368
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_5d

    .line 1371
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaParser;->mParserParameters:Ljava/util/Map;

    .line 1372
    iput-object p1, p0, Landroid/media/MediaParser;->mOutputConsumer:Landroid/media/MediaParser$OutputConsumer;

    .line 1373
    iput-object p3, p0, Landroid/media/MediaParser;->mParserNamesPool:[Ljava/lang/String;

    .line 1374
    iput-boolean p2, p0, Landroid/media/MediaParser;->mCreatedByName:Z

    if-eqz p2, :cond_1c

    const/4 p1, 0x0

    .line 1375
    aget-object p1, p3, p1

    goto :goto_1e

    :cond_1c
    const-string p1, "android.media.mediaparser.UNKNOWN"

    :goto_1e
    iput-object p1, p0, Landroid/media/MediaParser;->mParserName:Ljava/lang/String;

    .line 1376
    new-instance p1, Landroid/media/internal/exo/extractor/PositionHolder;

    invoke-direct {p1}, Landroid/media/internal/exo/extractor/PositionHolder;-><init>()V

    iput-object p1, p0, Landroid/media/MediaParser;->mPositionHolder:Landroid/media/internal/exo/extractor/PositionHolder;

    .line 1377
    new-instance p1, Landroid/media/MediaParser$InputReadingDataReader;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroid/media/MediaParser$InputReadingDataReader;-><init>(Landroid/media/MediaParser-IA;)V

    iput-object p1, p0, Landroid/media/MediaParser;->mExoDataReader:Landroid/media/MediaParser$InputReadingDataReader;

    .line 1378
    invoke-direct {p0}, Landroid/media/MediaParser;->removePendingSeek()V

    .line 1379
    new-instance p1, Landroid/media/MediaParser$DataReaderAdapter;

    invoke-direct {p1, p2}, Landroid/media/MediaParser$DataReaderAdapter;-><init>(Landroid/media/MediaParser-IA;)V

    iput-object p1, p0, Landroid/media/MediaParser;->mScratchDataReaderAdapter:Landroid/media/MediaParser$DataReaderAdapter;

    .line 1380
    new-instance p1, Landroid/media/MediaParser$ParsableByteArrayAdapter;

    invoke-direct {p1, p2}, Landroid/media/MediaParser$ParsableByteArrayAdapter;-><init>(Landroid/media/MediaParser-IA;)V

    iput-object p1, p0, Landroid/media/MediaParser;->mScratchParsableByteArrayAdapter:Landroid/media/MediaParser$ParsableByteArrayAdapter;

    .line 1381
    invoke-static {}, Landroid/media/MediaParser;->getSchemeInitDataConstructor()Ljava/lang/reflect/Constructor;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaParser;->mSchemeInitDataConstructor:Ljava/lang/reflect/Constructor;

    .line 1382
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/media/MediaParser;->mMuxedCaptionFormats:Ljava/util/ArrayList;

    .line 1385
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/media/MediaParser;->mTrackFormats:Landroid/util/SparseArray;

    .line 1386
    const-string p1, ""

    iput-object p1, p0, Landroid/media/MediaParser;->mLastObservedExceptionName:Ljava/lang/String;

    const-wide/16 p1, -0x1

    .line 1387
    iput-wide p1, p0, Landroid/media/MediaParser;->mDurationMillis:J

    return-void

    .line 1369
    :cond_5d
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Android version must be R or greater."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist addDither(J)J
    .registers 7

    .line 2162
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextFloat()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fa47ae140000000L    # 0.03999999910593033

    mul-double/2addr v0, v2

    const-wide v2, 0x3fef5c2900000000L    # 0.9800000190734863

    add-double/2addr v0, v2

    const-wide/16 v2, -0x1

    cmp-long v4, p0, v2

    if-eqz v4, :cond_1f

    long-to-double p0, p0

    mul-double/2addr p0, v0

    double-to-long p0, p0

    return-wide p0

    :cond_1f
    return-wide v2
.end method

.method private static blacklist assertValidNames([Ljava/lang/String;)V
    .registers 6

    .line 2171
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_3f

    aget-object v2, p0, v1

    .line 2172
    sget-object v3, Landroid/media/MediaParser;->EXTRACTOR_FACTORIES_BY_NAME:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2173
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid extractor name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Supported parsers are: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 2177
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3f
    return-void
.end method

.method private blacklist buildMediaMetricsString(Ljava/util/function/Function;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Landroid/media/internal/exo/Format;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 1392
    :goto_7
    iget-object v3, p0, Landroid/media/MediaParser;->mTrackFormats:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2f

    if-lez v2, :cond_16

    .line 1394
    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1396
    :cond_16
    iget-object v3, p0, Landroid/media/MediaParser;->mTrackFormats:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/internal/exo/Format;

    invoke-interface {p1, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_27

    goto :goto_29

    .line 1397
    :cond_27
    const-string v3, ""

    :goto_29
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1400
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    const/16 p1, 0xc8

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 1399
    invoke-virtual {v0, v1, p0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs whitelist create(Landroid/media/MediaParser$OutputConsumer;[Ljava/lang/String;)Landroid/media/MediaParser;
    .registers 4

    .line 957
    invoke-static {p1}, Landroid/media/MediaParser;->assertValidNames([Ljava/lang/String;)V

    .line 958
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_15

    .line 959
    sget-object p1, Landroid/media/MediaParser;->EXTRACTOR_FACTORIES_BY_NAME:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 961
    :cond_15
    new-instance v0, Landroid/media/MediaParser;

    invoke-direct {v0, p0, v1, p1}, Landroid/media/MediaParser;-><init>(Landroid/media/MediaParser$OutputConsumer;Z[Ljava/lang/String;)V

    return-object v0
.end method

.method public static whitelist createByName(Ljava/lang/String;Landroid/media/MediaParser$OutputConsumer;)Landroid/media/MediaParser;
    .registers 4

    .line 939
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v0

    .line 940
    invoke-static {v0}, Landroid/media/MediaParser;->assertValidNames([Ljava/lang/String;)V

    .line 941
    new-instance v0, Landroid/media/MediaParser;

    const/4 v1, 0x1

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, v1, p0}, Landroid/media/MediaParser;-><init>(Landroid/media/MediaParser$OutputConsumer;Z[Ljava/lang/String;)V

    return-object v0
.end method

.method private blacklist createExtractor(Ljava/lang/String;)Landroid/media/internal/exo/extractor/Extractor;
    .registers 13

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x8

    const/4 v4, 0x4

    .line 1422
    iget-boolean v5, p0, Landroid/media/MediaParser;->mIgnoreTimestampOffset:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_16

    .line 1423
    new-instance v5, Landroid/media/internal/exo/util/TimestampAdjuster;

    const-wide v7, 0x7fffffffffffffffL

    invoke-direct {v5, v7, v8}, Landroid/media/internal/exo/util/TimestampAdjuster;-><init>(J)V

    goto :goto_17

    :cond_16
    move-object v5, v6

    .line 1425
    :goto_17
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const/16 v7, 0x10

    const-string v8, "android.media.mediaparser.mp4.ignoreEditLists"

    const/4 v9, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_20c

    goto/16 :goto_d2

    :sswitch_28
    const-string v10, "android.media.mediaparser.FlvParser"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_32

    goto/16 :goto_d2

    :cond_32
    const/16 v9, 0xd

    goto/16 :goto_d2

    :sswitch_36
    const-string v10, "android.media.mediaparser.Mp3Parser"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_40

    goto/16 :goto_d2

    :cond_40
    const/16 v9, 0xc

    goto/16 :goto_d2

    :sswitch_44
    const-string v10, "android.media.mediaparser.Ac4Parser"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4e

    goto/16 :goto_d2

    :cond_4e
    const/16 v9, 0xb

    goto/16 :goto_d2

    :sswitch_52
    const-string v10, "android.media.mediaparser.MatroskaParser"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5c

    goto/16 :goto_d2

    :cond_5c
    const/16 v9, 0xa

    goto/16 :goto_d2

    :sswitch_60
    const-string v10, "android.media.mediaparser.FlacParser"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6a

    goto/16 :goto_d2

    :cond_6a
    const/16 v9, 0x9

    goto/16 :goto_d2

    :sswitch_6e
    const-string v10, "android.media.mediaparser.AmrParser"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_78

    goto/16 :goto_d2

    :cond_78
    move v9, v3

    goto/16 :goto_d2

    :sswitch_7b
    const-string v10, "android.media.mediaparser.Ac3Parser"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_84

    goto :goto_d2

    :cond_84
    const/4 v9, 0x7

    goto :goto_d2

    :sswitch_86
    const-string v10, "android.media.mediaparser.FragmentedMp4Parser"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8f

    goto :goto_d2

    :cond_8f
    const/4 v9, 0x6

    goto :goto_d2

    :sswitch_91
    const-string v10, "android.media.mediaparser.PsParser"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9a

    goto :goto_d2

    :cond_9a
    const/4 v9, 0x5

    goto :goto_d2

    :sswitch_9c
    const-string v10, "android.media.mediaparser.WavParser"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a5

    goto :goto_d2

    :cond_a5
    move v9, v4

    goto :goto_d2

    :sswitch_a7
    const-string v10, "android.media.mediaparser.AdtsParser"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b0

    goto :goto_d2

    :cond_b0
    const/4 v9, 0x3

    goto :goto_d2

    :sswitch_b2
    const-string v10, "android.media.mediaparser.TsParser"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_bb

    goto :goto_d2

    :cond_bb
    move v9, v2

    goto :goto_d2

    :sswitch_bd
    const-string v10, "android.media.mediaparser.OggParser"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c6

    goto :goto_d2

    :cond_c6
    move v9, v0

    goto :goto_d2

    :sswitch_c8
    const-string v10, "android.media.mediaparser.Mp4Parser"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d1

    goto :goto_d2

    :cond_d1
    move v9, v1

    :goto_d2
    packed-switch v9, :pswitch_data_246

    .line 1546
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected attempt to create: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1523
    :pswitch_ec
    new-instance p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;

    invoke-direct {p0}, Landroid/media/internal/exo/extractor/flv/FlvExtractor;-><init>()V

    return-object p0

    .line 1463
    :pswitch_f2
    const-string p1, "android.media.mediaparser.mp3.disableId3"

    invoke-direct {p0, p1}, Landroid/media/MediaParser;->getBooleanParameter(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_fb

    move v1, v3

    .line 1467
    :cond_fb
    const-string p1, "android.media.mediaparser.mp3.enableCbrSeeking"

    invoke-direct {p0, p1}, Landroid/media/MediaParser;->getBooleanParameter(Ljava/lang/String;)Z

    move-result p0

    or-int/2addr p0, v1

    .line 1471
    new-instance p1, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;

    invoke-direct {p1, p0}, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;-><init>(I)V

    return-object p1

    .line 1537
    :pswitch_108
    new-instance p0, Landroid/media/internal/exo/extractor/ts/Ac4Extractor;

    invoke-direct {p0}, Landroid/media/internal/exo/extractor/ts/Ac4Extractor;-><init>()V

    return-object p0

    .line 1428
    :pswitch_10e
    const-string p1, "android.media.mediaparser.matroska.disableCuesSeeking"

    invoke-direct {p0, p1}, Landroid/media/MediaParser;->getBooleanParameter(Ljava/lang/String;)Z

    move-result p0

    .line 1431
    new-instance p1, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;

    invoke-direct {p1, p0}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;-><init>(I)V

    return-object p1

    .line 1540
    :pswitch_11a
    const-string p1, "android.media.mediaparser.flac.disableId3"

    invoke-direct {p0, p1}, Landroid/media/MediaParser;->getBooleanParameter(Ljava/lang/String;)Z

    move-result p0

    .line 1543
    new-instance p1, Landroid/media/internal/exo/extractor/flac/FlacExtractor;

    invoke-direct {p1, p0}, Landroid/media/internal/exo/extractor/flac/FlacExtractor;-><init>(I)V

    return-object p1

    .line 1532
    :pswitch_126
    const-string p1, "android.media.mediaparser.amr.enableCbrSeeking"

    invoke-direct {p0, p1}, Landroid/media/MediaParser;->getBooleanParameter(Ljava/lang/String;)Z

    move-result p0

    .line 1535
    new-instance p1, Landroid/media/internal/exo/extractor/amr/AmrExtractor;

    invoke-direct {p1, p0}, Landroid/media/internal/exo/extractor/amr/AmrExtractor;-><init>(I)V

    return-object p1

    .line 1479
    :pswitch_132
    new-instance p0, Landroid/media/internal/exo/extractor/ts/Ac3Extractor;

    invoke-direct {p0}, Landroid/media/internal/exo/extractor/ts/Ac3Extractor;-><init>()V

    return-object p0

    .line 1434
    :pswitch_138
    const-string p1, "android.media.mediaParser.exposeEmsgTrack"

    invoke-direct {p0, p1}, Landroid/media/MediaParser;->getBooleanParameter(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_141

    goto :goto_142

    :cond_141
    move v4, v1

    .line 1438
    :goto_142
    invoke-direct {p0, v8}, Landroid/media/MediaParser;->getBooleanParameter(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_149

    goto :goto_14a

    :cond_149
    move v7, v1

    :goto_14a
    or-int p1, v4, v7

    .line 1442
    const-string v0, "android.media.mediaparser.mp4.ignoreTfdtBox"

    invoke-direct {p0, v0}, Landroid/media/MediaParser;->getBooleanParameter(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_155

    move v1, v2

    :cond_155
    or-int/2addr p1, v1

    .line 1446
    const-string v0, "android.media.mediaparser.mp4.treatVideoFramesAsKeyframes"

    invoke-direct {p0, v0}, Landroid/media/MediaParser;->getBooleanParameter(Ljava/lang/String;)Z

    move-result v0

    or-int/2addr p1, v0

    .line 1450
    new-instance v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;

    iget-object p0, p0, Landroid/media/MediaParser;->mMuxedCaptionFormats:Ljava/util/ArrayList;

    invoke-direct {v0, p1, v5, v6, p0}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;-><init>(ILandroid/media/internal/exo/util/TimestampAdjuster;Landroid/media/internal/exo/extractor/mp4/Track;Ljava/util/List;)V

    return-object v0

    .line 1527
    :pswitch_165
    new-instance p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;

    invoke-direct {p0}, Landroid/media/internal/exo/extractor/ts/PsExtractor;-><init>()V

    return-object p0

    .line 1529
    :pswitch_16b
    new-instance p0, Landroid/media/internal/exo/extractor/wav/WavExtractor;

    invoke-direct {p0}, Landroid/media/internal/exo/extractor/wav/WavExtractor;-><init>()V

    return-object p0

    .line 1474
    :pswitch_171
    const-string p1, "android.media.mediaparser.adts.enableCbrSeeking"

    invoke-direct {p0, p1}, Landroid/media/MediaParser;->getBooleanParameter(Ljava/lang/String;)Z

    move-result p0

    .line 1477
    new-instance p1, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;

    invoke-direct {p1, p0}, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;-><init>(I)V

    return-object p1

    .line 1482
    :pswitch_17d
    const-string p1, "android.media.mediaparser.ts.allowNonIdrAvcKeyframes"

    invoke-direct {p0, p1}, Landroid/media/MediaParser;->getBooleanParameter(Ljava/lang/String;)Z

    move-result p1

    .line 1486
    const-string v6, "android.media.mediaparser.ts.ignoreDetectAccessUnits"

    invoke-direct {p0, v6}, Landroid/media/MediaParser;->getBooleanParameter(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18c

    goto :goto_18d

    :cond_18c
    move v3, v1

    :goto_18d
    or-int/2addr p1, v3

    .line 1490
    const-string v3, "android.media.mediaparser.ts.enableHdmvDtsAudioStreams"

    invoke-direct {p0, v3}, Landroid/media/MediaParser;->getBooleanParameter(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_199

    const/16 v3, 0x40

    goto :goto_19a

    :cond_199
    move v3, v1

    :goto_19a
    or-int/2addr p1, v3

    .line 1494
    const-string v3, "android.media.mediaparser.ts.ignoreAacStream"

    invoke-direct {p0, v3}, Landroid/media/MediaParser;->getBooleanParameter(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a5

    move v3, v2

    goto :goto_1a6

    :cond_1a5
    move v3, v1

    :goto_1a6
    or-int/2addr p1, v3

    .line 1498
    const-string v3, "android.media.mediaparser.ts.ignoreAvcStream"

    invoke-direct {p0, v3}, Landroid/media/MediaParser;->getBooleanParameter(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b0

    goto :goto_1b1

    :cond_1b0
    move v4, v1

    :goto_1b1
    or-int/2addr p1, v4

    .line 1502
    const-string v3, "android.media.mediaparser.ts.ignoreSpliceInfoStream"

    invoke-direct {p0, v3}, Landroid/media/MediaParser;->getBooleanParameter(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1bb

    goto :goto_1bc

    :cond_1bb
    move v7, v1

    :goto_1bc
    or-int/2addr p1, v7

    .line 1506
    const-string v3, "android.media.mediaParser.overrideInBandCaptionDeclarations"

    invoke-direct {p0, v3}, Landroid/media/MediaParser;->getBooleanParameter(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c8

    const/16 v3, 0x20

    goto :goto_1c9

    :cond_1c8
    move v3, v1

    :goto_1c9
    or-int/2addr p1, v3

    .line 1509
    const-string v3, "android.media.mediaparser.ts.mode"

    const-string v4, "single_pmt"

    invoke-direct {p0, v3, v4}, Landroid/media/MediaParser;->getStringParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1511
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d9

    goto :goto_1e4

    .line 1513
    :cond_1d9
    const-string v0, "hls"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e3

    move v0, v2

    goto :goto_1e4

    :cond_1e3
    move v0, v1

    .line 1516
    :goto_1e4
    new-instance v1, Landroid/media/internal/exo/extractor/ts/TsExtractor;

    if-eqz v5, :cond_1e9

    goto :goto_1f0

    .line 1520
    :cond_1e9
    new-instance v5, Landroid/media/internal/exo/util/TimestampAdjuster;

    const-wide/16 v2, 0x0

    invoke-direct {v5, v2, v3}, Landroid/media/internal/exo/util/TimestampAdjuster;-><init>(J)V

    :goto_1f0
    new-instance v2, Landroid/media/internal/exo/extractor/ts/DefaultTsPayloadReaderFactory;

    iget-object p0, p0, Landroid/media/MediaParser;->mMuxedCaptionFormats:Ljava/util/ArrayList;

    invoke-direct {v2, p1, p0}, Landroid/media/internal/exo/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(ILjava/util/List;)V

    invoke-direct {v1, v0, v5, v2}, Landroid/media/internal/exo/extractor/ts/TsExtractor;-><init>(ILandroid/media/internal/exo/util/TimestampAdjuster;Landroid/media/internal/exo/extractor/ts/TsPayloadReader$Factory;)V

    return-object v1

    .line 1525
    :pswitch_1fb
    new-instance p0, Landroid/media/internal/exo/extractor/ogg/OggExtractor;

    invoke-direct {p0}, Landroid/media/internal/exo/extractor/ogg/OggExtractor;-><init>()V

    return-object p0

    .line 1457
    :pswitch_201
    invoke-direct {p0, v8}, Landroid/media/MediaParser;->getBooleanParameter(Ljava/lang/String;)Z

    move-result p0

    .line 1460
    new-instance p1, Landroid/media/internal/exo/extractor/mp4/Mp4Extractor;

    invoke-direct {p1, p0}, Landroid/media/internal/exo/extractor/mp4/Mp4Extractor;-><init>(I)V

    return-object p1

    nop

    :sswitch_data_20c
    .sparse-switch
        -0x7afe9a64 -> :sswitch_c8
        -0x6f828246 -> :sswitch_bd
        -0x5d5dc92e -> :sswitch_b2
        -0x35a8150b -> :sswitch_a7
        -0x23289ea9 -> :sswitch_9c
        0x31d8356 -> :sswitch_91
        0x6f5c06d -> :sswitch_86
        0x1676aefc -> :sswitch_7b
        0x29eb04b1 -> :sswitch_6e
        0x2dd08ffb -> :sswitch_60
        0x39936bdf -> :sswitch_52
        0x4b5cea3d -> :sswitch_44
        0x501b2a5b -> :sswitch_36
        0x7af8efdb -> :sswitch_28
    .end sparse-switch

    :pswitch_data_246
    .packed-switch 0x0
        :pswitch_201
        :pswitch_1fb
        :pswitch_17d
        :pswitch_171
        :pswitch_16b
        :pswitch_165
        :pswitch_138
        :pswitch_132
        :pswitch_126
        :pswitch_11a
        :pswitch_10e
        :pswitch_108
        :pswitch_f2
        :pswitch_ec
    .end packed-switch
.end method

.method private blacklist getBooleanParameter(Ljava/lang/String;)Z
    .registers 3

    .line 1551
    iget-object p0, p0, Landroid/media/MediaParser;->mParserParameters:Ljava/util/Map;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private blacklist getLogSessionIdStringV31()Ljava/lang/String;
    .registers 1

    .line 1560
    iget-object p0, p0, Landroid/media/MediaParser;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/media/metrics/LogSessionId;->getStringId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const-string p0, ""

    return-object p0
.end method

.method private blacklist getMediaParserFlags(I)I
    .registers 6

    const/high16 v0, 0x40000000    # 2.0f

    and-int v1, p1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    goto :goto_9

    :cond_8
    move v0, v2

    :goto_9
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    move v1, v2

    :goto_10
    or-int/2addr v0, v1

    const/high16 v1, -0x80000000

    and-int v3, p1, v1

    if-eqz v3, :cond_18

    goto :goto_19

    :cond_18
    move v1, v2

    :goto_19
    or-int/2addr v0, v1

    const/high16 v1, 0x10000000

    and-int v3, p1, v1

    if-eqz v3, :cond_25

    .line 2189
    iget-boolean p0, p0, Landroid/media/MediaParser;->mIncludeSupplementalData:Z

    if-eqz p0, :cond_25

    goto :goto_26

    :cond_25
    move v1, v2

    :goto_26
    or-int p0, v0, v1

    const/high16 v0, 0x20000000

    and-int/2addr p1, v0

    if-eqz p1, :cond_2e

    move v2, v0

    :cond_2e
    or-int/2addr p0, v2

    return p0
.end method

.method public static whitelist getParserNames(Landroid/media/MediaFormat;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaFormat;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 980
    const-string v0, "mime"

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    goto :goto_e

    .line 981
    :cond_a
    invoke-static {p0}, Landroid/media/internal/guava_common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 982
    :goto_e
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 984
    new-instance p0, Ljava/util/ArrayList;

    sget-object v0, Landroid/media/MediaParser;->EXTRACTOR_FACTORIES_BY_NAME:Ljava/util/Map;

    .line 985
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 984
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 987
    :cond_24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 988
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_1e4

    goto/16 :goto_189

    :sswitch_36
    const-string v2, "video/x-matroska"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_40

    goto/16 :goto_189

    :cond_40
    const/16 v1, 0x19

    goto/16 :goto_189

    :sswitch_44
    const-string v2, "audio/wave"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4e

    goto/16 :goto_189

    :cond_4e
    const/16 v1, 0x18

    goto/16 :goto_189

    :sswitch_52
    const-string v2, "audio/mpeg"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5c

    goto/16 :goto_189

    :cond_5c
    const/16 v1, 0x17

    goto/16 :goto_189

    :sswitch_60
    const-string v2, "audio/mp2t"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6a

    goto/16 :goto_189

    :cond_6a
    const/16 v1, 0x16

    goto/16 :goto_189

    :sswitch_6e
    const-string v2, "audio/flac"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_78

    goto/16 :goto_189

    :cond_78
    const/16 v1, 0x15

    goto/16 :goto_189

    :sswitch_7c
    const-string v2, "video/ogg"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_86

    goto/16 :goto_189

    :cond_86
    const/16 v1, 0x14

    goto/16 :goto_189

    :sswitch_8a
    const-string v2, "video/mp4"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_94

    goto/16 :goto_189

    :cond_94
    const/16 v1, 0x13

    goto/16 :goto_189

    :sswitch_98
    const-string v2, "video/x-webm"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a2

    goto/16 :goto_189

    :cond_a2
    const/16 v1, 0x12

    goto/16 :goto_189

    :sswitch_a6
    const-string v2, "audio/vnd.wave"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b0

    goto/16 :goto_189

    :cond_b0
    const/16 v1, 0x11

    goto/16 :goto_189

    :sswitch_b4
    const-string v2, "audio/wav"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_be

    goto/16 :goto_189

    :cond_be
    const/16 v1, 0x10

    goto/16 :goto_189

    :sswitch_c2
    const-string v2, "audio/ogg"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_cc

    goto/16 :goto_189

    :cond_cc
    const/16 v1, 0xf

    goto/16 :goto_189

    :sswitch_d0
    const-string v2, "audio/mp4"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_da

    goto/16 :goto_189

    :cond_da
    const/16 v1, 0xe

    goto/16 :goto_189

    :sswitch_de
    const-string v2, "audio/amr"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e8

    goto/16 :goto_189

    :cond_e8
    const/16 v1, 0xd

    goto/16 :goto_189

    :sswitch_ec
    const-string v2, "audio/ac4"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f6

    goto/16 :goto_189

    :cond_f6
    const/16 v1, 0xc

    goto/16 :goto_189

    :sswitch_fa
    const-string v2, "audio/ac3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_104

    goto/16 :goto_189

    :cond_104
    const/16 v1, 0xb

    goto/16 :goto_189

    :sswitch_108
    const-string v2, "audio/aac"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_112

    goto/16 :goto_189

    :cond_112
    const/16 v1, 0xa

    goto/16 :goto_189

    :sswitch_116
    const-string v2, "video/x-flv"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_120

    goto/16 :goto_189

    :cond_120
    const/16 v1, 0x9

    goto/16 :goto_189

    :sswitch_124
    const-string v2, "audio/x-matroska"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12e

    goto/16 :goto_189

    :cond_12e
    const/16 v1, 0x8

    goto/16 :goto_189

    :sswitch_132
    const-string v2, "audio/x-wav"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13b

    goto :goto_189

    :cond_13b
    const/4 v1, 0x7

    goto :goto_189

    :sswitch_13d
    const-string v2, "audio/x-webm"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_146

    goto :goto_189

    :cond_146
    const/4 v1, 0x6

    goto :goto_189

    :sswitch_148
    const-string v2, "audio/x-flac"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_151

    goto :goto_189

    :cond_151
    const/4 v1, 0x5

    goto :goto_189

    :sswitch_153
    const-string v2, "application/ogg"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15c

    goto :goto_189

    :cond_15c
    const/4 v1, 0x4

    goto :goto_189

    :sswitch_15e
    const-string v2, "application/mp4"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_167

    goto :goto_189

    :cond_167
    const/4 v1, 0x3

    goto :goto_189

    :sswitch_169
    const-string v2, "video/mp2t"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_172

    goto :goto_189

    :cond_172
    const/4 v1, 0x2

    goto :goto_189

    :sswitch_174
    const-string v2, "video/mp2p"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17d

    goto :goto_189

    :cond_17d
    const/4 v1, 0x1

    goto :goto_189

    :sswitch_17f
    const-string v2, "video/mp1s"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_188

    goto :goto_189

    :cond_188
    const/4 v1, 0x0

    :goto_189
    packed-switch v1, :pswitch_data_24e

    goto :goto_1df

    .line 1002
    :pswitch_18d
    const-string p0, "android.media.mediaparser.Mp3Parser"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1df

    .line 1033
    :pswitch_193
    const-string p0, "android.media.mediaparser.AmrParser"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1df

    .line 1036
    :pswitch_199
    const-string p0, "android.media.mediaparser.Ac4Parser"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1df

    .line 1008
    :pswitch_19f
    const-string p0, "android.media.mediaparser.Ac3Parser"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1df

    .line 1005
    :pswitch_1a5
    const-string p0, "android.media.mediaparser.AdtsParser"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1df

    .line 1015
    :pswitch_1ab
    const-string p0, "android.media.mediaparser.FlvParser"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1df

    .line 1030
    :pswitch_1b1
    const-string p0, "android.media.mediaparser.WavParser"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1df

    .line 993
    :pswitch_1b7
    const-string p0, "android.media.mediaparser.MatroskaParser"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1df

    .line 1040
    :pswitch_1bd
    const-string p0, "android.media.mediaparser.FlacParser"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1df

    .line 1020
    :pswitch_1c3
    const-string p0, "android.media.mediaparser.OggParser"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1df

    .line 998
    :pswitch_1c9
    const-string p0, "android.media.mediaparser.Mp4Parser"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 999
    const-string p0, "android.media.mediaparser.FragmentedMp4Parser"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1df

    .line 1012
    :pswitch_1d4
    const-string p0, "android.media.mediaparser.TsParser"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1df

    .line 1024
    :pswitch_1da
    const-string p0, "android.media.mediaparser.PsParser"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1046
    :goto_1df
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :sswitch_data_1e4
    .sparse-switch
        -0x6315f7a7 -> :sswitch_17f
        -0x6315f78b -> :sswitch_174
        -0x6315f787 -> :sswitch_169
        -0x4a681e4e -> :sswitch_15e
        -0x4a6817b0 -> :sswitch_153
        -0x3c11ec0a -> :sswitch_148
        -0x3c0a4bd9 -> :sswitch_13d
        -0x22f81362 -> :sswitch_132
        -0x17118226 -> :sswitch_124
        0xd45707 -> :sswitch_116
        0xb26968a -> :sswitch_108
        0xb269698 -> :sswitch_fa
        0xb269699 -> :sswitch_ec
        0xb26980d -> :sswitch_de
        0xb26c538 -> :sswitch_d0
        0xb26cbd6 -> :sswitch_c2
        0xb26e933 -> :sswitch_b4
        0x18a24514 -> :sswitch_a6
        0x19be27e2 -> :sswitch_98
        0x4f62635d -> :sswitch_8a
        0x4f6269fb -> :sswitch_7c
        0x59aeaa01 -> :sswitch_6e
        0x59b1e1fe -> :sswitch_60
        0x59b1e81e -> :sswitch_52
        0x59b63d92 -> :sswitch_44
        0x79909c15 -> :sswitch_36
    .end sparse-switch

    :pswitch_data_24e
    .packed-switch 0x0
        :pswitch_1da
        :pswitch_1da
        :pswitch_1d4
        :pswitch_1c9
        :pswitch_1c3
        :pswitch_1bd
        :pswitch_1b7
        :pswitch_1b1
        :pswitch_1b7
        :pswitch_1ab
        :pswitch_1a5
        :pswitch_19f
        :pswitch_199
        :pswitch_193
        :pswitch_1c9
        :pswitch_1c3
        :pswitch_1b1
        :pswitch_1b1
        :pswitch_1b7
        :pswitch_1c9
        :pswitch_1c3
        :pswitch_1bd
        :pswitch_1d4
        :pswitch_18d
        :pswitch_1b1
        :pswitch_1b7
    .end packed-switch
.end method

.method private static blacklist getSchemeInitDataConstructor()Ljava/lang/reflect/Constructor;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "Landroid/media/DrmInitData$SchemeInitData;",
            ">;"
        }
    .end annotation

    .line 2201
    :try_start_0
    const-class v0, Landroid/media/DrmInitData$SchemeInitData;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/util/UUID;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-class v2, [B

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    return-object v0

    .line 2204
    :catchall_19
    const-string v0, "MediaParser"

    const-string v1, "Unable to get SchemeInitData constructor."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getStringParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1555
    iget-object p0, p0, Landroid/media/MediaParser;->mParserParameters:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private blacklist isPendingSeek()Z
    .registers 5

    .line 1411
    iget-wide v0, p0, Landroid/media/MediaParser;->mPendingSeekPosition:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private native blacklist nativeSubmitMetrics(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method private blacklist removePendingSeek()V
    .registers 3

    const-wide/16 v0, -0x1

    .line 1415
    iput-wide v0, p0, Landroid/media/MediaParser;->mPendingSeekPosition:J

    .line 1416
    iput-wide v0, p0, Landroid/media/MediaParser;->mPendingSeekTimeMicros:J

    return-void
.end method

.method private blacklist setMuxedCaptionFormats(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaFormat;",
            ">;)V"
        }
    .end annotation

    .line 1404
    iget-object v0, p0, Landroid/media/MediaParser;->mMuxedCaptionFormats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1405
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFormat;

    .line 1406
    iget-object v1, p0, Landroid/media/MediaParser;->mMuxedCaptionFormats:Ljava/util/ArrayList;

    invoke-static {v0}, Landroid/media/MediaParser;->toExoPlayerCaptionFormat(Landroid/media/MediaFormat;)Landroid/media/internal/exo/Format;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1f
    return-void
.end method

.method private static blacklist setOptionalMediaFormatInt(Landroid/media/MediaFormat;Ljava/lang/String;I)V
    .registers 4

    const/4 v0, -0x1

    if-eq p2, v0, :cond_6

    .line 2124
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_6
    return-void
.end method

.method private static blacklist setOptionalMediaFormatString(Landroid/media/MediaFormat;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    if-eqz p2, :cond_5

    .line 2131
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private static blacklist setPcmEncoding(Landroid/media/internal/exo/Format;Landroid/media/MediaFormat;)V
    .registers 3

    .line 2102
    iget p0, p0, Landroid/media/internal/exo/Format;->pcmEncoding:I

    .line 2103
    const-string v0, "exo-pcm-encoding"

    invoke-static {p1, v0, p0}, Landroid/media/MediaParser;->setOptionalMediaFormatInt(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const/4 v0, 0x2

    if-eq p0, v0, :cond_11

    const/4 v0, 0x3

    if-eq p0, v0, :cond_11

    const/4 v0, 0x4

    if-eq p0, v0, :cond_11

    return-void

    .line 2119
    :cond_11
    const-string p0, "pcm-encoding"

    invoke-virtual {p1, p0, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-void
.end method

.method private static blacklist toByteBuffer([I)Ljava/nio/ByteBuffer;
    .registers 5

    .line 2078
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2079
    array-length v1, p0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_13

    aget v3, p0, v2

    .line 2080
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 2082
    :cond_13
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method

.method private static blacklist toByteBuffer([J)Ljava/nio/ByteBuffer;
    .registers 6

    .line 2069
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2070
    array-length v1, p0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_13

    aget-wide v3, p0, v2

    .line 2071
    invoke-virtual {v0, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 2073
    :cond_13
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method

.method private static blacklist toExoPlayerCaptionFormat(Landroid/media/MediaFormat;)Landroid/media/internal/exo/Format;
    .registers 4

    .line 1981
    new-instance v0, Landroid/media/internal/exo/Format$Builder;

    invoke-direct {v0}, Landroid/media/internal/exo/Format$Builder;-><init>()V

    const-string v1, "mime"

    .line 1982
    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/internal/exo/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v0

    .line 1983
    const-string v1, "caption-service-number"

    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1985
    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0

    .line 1984
    invoke-virtual {v0, p0}, Landroid/media/internal/exo/Format$Builder;->setAccessibilityChannel(I)Landroid/media/internal/exo/Format$Builder;

    .line 1987
    :cond_1e
    invoke-virtual {v0}, Landroid/media/internal/exo/Format$Builder;->build()Landroid/media/internal/exo/Format;

    move-result-object p0

    return-object p0
.end method

.method private blacklist toFrameworkDrmInitData(Landroid/media/internal/exo/drm/DrmInitData;)Landroid/media/DrmInitData;
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    .line 2138
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaParser;->mSchemeInitDataConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_1b

    .line 2139
    new-instance v1, Landroid/media/MediaParser$MediaParserDrmInitData;

    invoke-direct {v1, p0, p1, v0}, Landroid/media/MediaParser$MediaParserDrmInitData;-><init>(Landroid/media/MediaParser;Landroid/media/internal/exo/drm/DrmInitData;Landroid/media/MediaParser-IA;)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_d

    return-object v1

    .line 2142
    :catchall_d
    iget-boolean p1, p0, Landroid/media/MediaParser;->mLoggedSchemeInitDataCreationException:Z

    if-nez p1, :cond_1b

    const/4 p1, 0x1

    .line 2143
    iput-boolean p1, p0, Landroid/media/MediaParser;->mLoggedSchemeInitDataCreationException:Z

    .line 2144
    const-string p0, "MediaParser"

    const-string p1, "Unable to create SchemeInitData instance."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    return-object v0
.end method

.method private static blacklist toMediaFormat(Landroid/media/internal/exo/Format;)Landroid/media/MediaFormat;
    .registers 8

    .line 1991
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 1992
    iget v1, p0, Landroid/media/internal/exo/Format;->bitrate:I

    const-string v2, "bitrate"

    invoke-static {v0, v2, v1}, Landroid/media/MediaParser;->setOptionalMediaFormatInt(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 1993
    const-string v1, "channel-count"

    iget v2, p0, Landroid/media/internal/exo/Format;->channelCount:I

    invoke-static {v0, v1, v2}, Landroid/media/MediaParser;->setOptionalMediaFormatInt(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 1995
    iget-object v1, p0, Landroid/media/internal/exo/Format;->colorInfo:Landroid/media/internal/exo/video/ColorInfo;

    if-eqz v1, :cond_3b

    .line 1997
    const-string v2, "color-transfer"

    iget v3, v1, Landroid/media/internal/exo/video/ColorInfo;->colorTransfer:I

    invoke-static {v0, v2, v3}, Landroid/media/MediaParser;->setOptionalMediaFormatInt(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 1999
    const-string v2, "color-range"

    iget v3, v1, Landroid/media/internal/exo/video/ColorInfo;->colorRange:I

    invoke-static {v0, v2, v3}, Landroid/media/MediaParser;->setOptionalMediaFormatInt(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 2000
    const-string v2, "color-standard"

    iget v1, v1, Landroid/media/internal/exo/video/ColorInfo;->colorSpace:I

    invoke-static {v0, v2, v1}, Landroid/media/MediaParser;->setOptionalMediaFormatInt(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 2002
    iget-object v1, p0, Landroid/media/internal/exo/Format;->colorInfo:Landroid/media/internal/exo/video/ColorInfo;

    iget-object v1, v1, Landroid/media/internal/exo/video/ColorInfo;->hdrStaticInfo:[B

    if-eqz v1, :cond_3b

    .line 2003
    const-string v2, "hdr-static-info"

    .line 2005
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2003
    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 2009
    :cond_3b
    const-string v1, "mime"

    iget-object v2, p0, Landroid/media/internal/exo/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/media/MediaParser;->setOptionalMediaFormatString(Landroid/media/MediaFormat;Ljava/lang/String;Ljava/lang/String;)V

    .line 2010
    const-string v1, "codecs-string"

    iget-object v2, p0, Landroid/media/internal/exo/Format;->codecs:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/media/MediaParser;->setOptionalMediaFormatString(Landroid/media/MediaFormat;Ljava/lang/String;Ljava/lang/String;)V

    .line 2011
    iget v1, p0, Landroid/media/internal/exo/Format;->frameRate:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_56

    .line 2012
    const-string v3, "frame-rate"

    invoke-virtual {v0, v3, v1}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 2014
    :cond_56
    const-string v1, "width"

    iget v3, p0, Landroid/media/internal/exo/Format;->width:I

    invoke-static {v0, v1, v3}, Landroid/media/MediaParser;->setOptionalMediaFormatInt(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 2015
    const-string v1, "height"

    iget v3, p0, Landroid/media/internal/exo/Format;->height:I

    invoke-static {v0, v1, v3}, Landroid/media/MediaParser;->setOptionalMediaFormatInt(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 2017
    iget-object v1, p0, Landroid/media/internal/exo/Format;->initializationData:Ljava/util/List;

    const/4 v3, 0x0

    .line 2018
    :goto_67
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_8e

    .line 2019
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "csd-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_67

    .line 2021
    :cond_8e
    invoke-static {p0, v0}, Landroid/media/MediaParser;->setPcmEncoding(Landroid/media/internal/exo/Format;Landroid/media/MediaFormat;)V

    .line 2022
    const-string v1, "language"

    iget-object v3, p0, Landroid/media/internal/exo/Format;->language:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Landroid/media/MediaParser;->setOptionalMediaFormatString(Landroid/media/MediaFormat;Ljava/lang/String;Ljava/lang/String;)V

    .line 2023
    const-string v1, "max-input-size"

    iget v3, p0, Landroid/media/internal/exo/Format;->maxInputSize:I

    invoke-static {v0, v1, v3}, Landroid/media/MediaParser;->setOptionalMediaFormatInt(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 2024
    const-string v1, "rotation-degrees"

    iget v3, p0, Landroid/media/internal/exo/Format;->rotationDegrees:I

    invoke-static {v0, v1, v3}, Landroid/media/MediaParser;->setOptionalMediaFormatInt(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 2025
    const-string v1, "sample-rate"

    iget v3, p0, Landroid/media/internal/exo/Format;->sampleRate:I

    invoke-static {v0, v1, v3}, Landroid/media/MediaParser;->setOptionalMediaFormatInt(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 2026
    const-string v1, "caption-service-number"

    iget v3, p0, Landroid/media/internal/exo/Format;->accessibilityChannel:I

    invoke-static {v0, v1, v3}, Landroid/media/MediaParser;->setOptionalMediaFormatInt(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 2029
    iget v1, p0, Landroid/media/internal/exo/Format;->selectionFlags:I

    and-int/lit8 v3, v1, 0x4

    .line 2030
    const-string v4, "is-autoselect"

    invoke-virtual {v0, v4, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    and-int/lit8 v3, v1, 0x1

    .line 2032
    const-string v4, "is-default"

    invoke-virtual {v0, v4, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    and-int/lit8 v1, v1, 0x2

    .line 2033
    const-string v3, "is-forced-subtitle"

    invoke-virtual {v0, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2036
    const-string v1, "encoder-delay"

    iget v3, p0, Landroid/media/internal/exo/Format;->encoderDelay:I

    invoke-static {v0, v1, v3}, Landroid/media/MediaParser;->setOptionalMediaFormatInt(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 2037
    const-string v1, "encoder-padding"

    iget v3, p0, Landroid/media/internal/exo/Format;->encoderPadding:I

    invoke-static {v0, v1, v3}, Landroid/media/MediaParser;->setOptionalMediaFormatInt(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 2039
    iget v1, p0, Landroid/media/internal/exo/Format;->pixelWidthHeightRatio:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_10e

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_10e

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, v1, v2

    const/high16 v4, 0x40000000    # 2.0f

    if-gez v3, :cond_f3

    int-to-float v2, v4

    mul-float/2addr v1, v2

    float-to-int v1, v1

    move v6, v4

    move v4, v1

    move v1, v6

    goto :goto_fd

    :cond_f3
    cmpl-float v2, v1, v2

    if-lez v2, :cond_fb

    int-to-float v2, v4

    div-float/2addr v2, v1

    float-to-int v1, v2

    goto :goto_fd

    :cond_fb
    const/4 v4, 0x1

    move v1, v4

    .line 2049
    :goto_fd
    const-string v2, "sar-width"

    invoke-virtual {v0, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2050
    const-string v2, "sar-height"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2051
    const-string v1, "pixel-width-height-ratio-float"

    iget v2, p0, Landroid/media/internal/exo/Format;->pixelWidthHeightRatio:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 2053
    :cond_10e
    iget-object v1, p0, Landroid/media/internal/exo/Format;->drmInitData:Landroid/media/internal/exo/drm/DrmInitData;

    if-eqz v1, :cond_119

    .line 2056
    const-string v2, "crypto-mode-fourcc"

    iget-object v1, v1, Landroid/media/internal/exo/drm/DrmInitData;->schemeType:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2058
    :cond_119
    iget-wide v1, p0, Landroid/media/internal/exo/Format;->subsampleOffsetUs:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long p0, v1, v3

    if-eqz p0, :cond_129

    .line 2059
    const-string p0, "subsample-offset-us-long"

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/MediaFormat;->setLong(Ljava/lang/String;J)V

    :cond_129
    return-object v0
.end method

.method private static blacklist toSeekPoint(Landroid/media/internal/exo/extractor/SeekPoint;)Landroid/media/MediaParser$SeekPoint;
    .registers 7

    .line 2153
    new-instance v0, Landroid/media/MediaParser$SeekPoint;

    iget-wide v1, p0, Landroid/media/internal/exo/extractor/SeekPoint;->timeUs:J

    iget-wide v3, p0, Landroid/media/internal/exo/extractor/SeekPoint;->position:J

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaParser$SeekPoint;-><init>(JJLandroid/media/MediaParser-IA;)V

    return-object v0
.end method

.method private static blacklist toTypeString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_18

    const/4 v0, 0x2

    if-eq p0, v0, :cond_15

    const/4 v0, 0x3

    if-eq p0, v0, :cond_12

    const/4 v0, 0x5

    if-eq p0, v0, :cond_f

    .line 2097
    const-string p0, "unknown"

    return-object p0

    .line 2095
    :cond_f
    const-string p0, "metadata"

    return-object p0

    .line 2093
    :cond_12
    const-string p0, "text"

    return-object p0

    .line 2089
    :cond_15
    const-string p0, "video"

    return-object p0

    .line 2091
    :cond_18
    const-string p0, "audio"

    return-object p0
.end method


# virtual methods
.method public whitelist advance(Landroid/media/MediaParser$SeekableInputReader;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1193
    iget-object v0, p0, Landroid/media/MediaParser;->mExtractorInput:Landroid/media/internal/exo/extractor/ExtractorInput;

    if-nez v0, :cond_1f

    .line 1196
    invoke-interface {p1}, Landroid/media/MediaParser$InputReader;->getLength()J

    move-result-wide v5

    .line 1197
    iget-wide v0, p0, Landroid/media/MediaParser;->mResourceByteCount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    .line 1200
    iput-wide v5, p0, Landroid/media/MediaParser;->mResourceByteCount:J

    .line 1202
    :cond_12
    new-instance v1, Landroid/media/internal/exo/extractor/DefaultExtractorInput;

    iget-object v2, p0, Landroid/media/MediaParser;->mExoDataReader:Landroid/media/MediaParser$InputReadingDataReader;

    .line 1204
    invoke-interface {p1}, Landroid/media/MediaParser$InputReader;->getPosition()J

    move-result-wide v3

    invoke-direct/range {v1 .. v6}, Landroid/media/internal/exo/extractor/DefaultExtractorInput;-><init>(Landroid/media/internal/exo/upstream/DataReader;JJ)V

    iput-object v1, p0, Landroid/media/MediaParser;->mExtractorInput:Landroid/media/internal/exo/extractor/ExtractorInput;

    .line 1206
    :cond_1f
    iget-object v0, p0, Landroid/media/MediaParser;->mExoDataReader:Landroid/media/MediaParser$InputReadingDataReader;

    iput-object p1, v0, Landroid/media/MediaParser$InputReadingDataReader;->mInputReader:Landroid/media/MediaParser$InputReader;

    .line 1208
    iget-object v0, p0, Landroid/media/MediaParser;->mExtractor:Landroid/media/internal/exo/extractor/Extractor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_85

    .line 1209
    iput-boolean v2, p0, Landroid/media/MediaParser;->mPendingExtractorInit:Z

    .line 1210
    iget-object v0, p0, Landroid/media/MediaParser;->mParserName:Ljava/lang/String;

    const-string v3, "android.media.mediaparser.UNKNOWN"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 1211
    iget-object v0, p0, Landroid/media/MediaParser;->mParserName:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/media/MediaParser;->createExtractor(Ljava/lang/String;)Landroid/media/internal/exo/extractor/Extractor;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaParser;->mExtractor:Landroid/media/internal/exo/extractor/Extractor;

    goto :goto_85

    .line 1213
    :cond_3e
    iget-object p1, p0, Landroid/media/MediaParser;->mParserNamesPool:[Ljava/lang/String;

    array-length v0, p1

    :goto_41
    if-ge v1, v0, :cond_6f

    aget-object v3, p1, v1

    .line 1214
    invoke-direct {p0, v3}, Landroid/media/MediaParser;->createExtractor(Ljava/lang/String;)Landroid/media/internal/exo/extractor/Extractor;

    move-result-object v4

    .line 1216
    :try_start_49
    iget-object v5, p0, Landroid/media/MediaParser;->mExtractorInput:Landroid/media/internal/exo/extractor/ExtractorInput;

    invoke-interface {v4, v5}, Landroid/media/internal/exo/extractor/Extractor;->sniff(Landroid/media/internal/exo/extractor/ExtractorInput;)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 1217
    iput-object v3, p0, Landroid/media/MediaParser;->mParserName:Ljava/lang/String;

    .line 1218
    iput-object v4, p0, Landroid/media/MediaParser;->mExtractor:Landroid/media/internal/exo/extractor/Extractor;

    .line 1219
    iput-boolean v2, p0, Landroid/media/MediaParser;->mPendingExtractorInit:Z
    :try_end_57
    .catch Ljava/io/EOFException; {:try_start_49 .. :try_end_57} :catch_60
    .catchall {:try_start_49 .. :try_end_57} :catchall_5d

    .line 1225
    iget-object p1, p0, Landroid/media/MediaParser;->mExtractorInput:Landroid/media/internal/exo/extractor/ExtractorInput;

    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_6f

    :catchall_5d
    move-exception v0

    move-object p1, v0

    goto :goto_66

    :catch_60
    :cond_60
    iget-object v3, p0, Landroid/media/MediaParser;->mExtractorInput:Landroid/media/internal/exo/extractor/ExtractorInput;

    invoke-interface {v3}, Landroid/media/internal/exo/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_6c

    :goto_66
    iget-object p0, p0, Landroid/media/MediaParser;->mExtractorInput:Landroid/media/internal/exo/extractor/ExtractorInput;

    invoke-interface {p0}, Landroid/media/internal/exo/extractor/ExtractorInput;->resetPeekPosition()V

    .line 1226
    throw p1

    :goto_6c
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 1228
    :cond_6f
    :goto_6f
    iget-object p1, p0, Landroid/media/MediaParser;->mExtractor:Landroid/media/internal/exo/extractor/Extractor;

    if-eqz p1, :cond_74

    return v2

    .line 1229
    :cond_74
    iget-object p1, p0, Landroid/media/MediaParser;->mParserNamesPool:[Ljava/lang/String;

    .line 1230
    invoke-static {p1}, Landroid/media/MediaParser$UnrecognizedInputFormatException;->-$$Nest$smcreateForExtractors([Ljava/lang/String;)Landroid/media/MediaParser$UnrecognizedInputFormatException;

    move-result-object p1

    .line 1231
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaParser;->mLastObservedExceptionName:Ljava/lang/String;

    .line 1232
    throw p1

    .line 1238
    :cond_85
    :goto_85
    iget-boolean v0, p0, Landroid/media/MediaParser;->mPendingExtractorInit:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_a2

    .line 1239
    iget-boolean p1, p0, Landroid/media/MediaParser;->mExposeDummySeekMap:Z

    if-eqz p1, :cond_95

    .line 1242
    iget-object p1, p0, Landroid/media/MediaParser;->mOutputConsumer:Landroid/media/MediaParser$OutputConsumer;

    sget-object v0, Landroid/media/MediaParser$SeekMap;->DUMMY:Landroid/media/MediaParser$SeekMap;

    invoke-interface {p1, v0}, Landroid/media/MediaParser$OutputConsumer;->onSeekMapFound(Landroid/media/MediaParser$SeekMap;)V

    .line 1244
    :cond_95
    iget-object p1, p0, Landroid/media/MediaParser;->mExtractor:Landroid/media/internal/exo/extractor/Extractor;

    new-instance v0, Landroid/media/MediaParser$ExtractorOutputAdapter;

    invoke-direct {v0, p0, v3}, Landroid/media/MediaParser$ExtractorOutputAdapter;-><init>(Landroid/media/MediaParser;Landroid/media/MediaParser-IA;)V

    invoke-interface {p1, v0}, Landroid/media/internal/exo/extractor/Extractor;->init(Landroid/media/internal/exo/extractor/ExtractorOutput;)V

    .line 1245
    iput-boolean v1, p0, Landroid/media/MediaParser;->mPendingExtractorInit:Z

    return v2

    .line 1251
    :cond_a2
    invoke-direct {p0}, Landroid/media/MediaParser;->isPendingSeek()Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 1252
    iget-object v0, p0, Landroid/media/MediaParser;->mExtractor:Landroid/media/internal/exo/extractor/Extractor;

    iget-wide v4, p0, Landroid/media/MediaParser;->mPendingSeekPosition:J

    iget-wide v6, p0, Landroid/media/MediaParser;->mPendingSeekTimeMicros:J

    invoke-interface {v0, v4, v5, v6, v7}, Landroid/media/internal/exo/extractor/Extractor;->seek(JJ)V

    .line 1253
    invoke-direct {p0}, Landroid/media/MediaParser;->removePendingSeek()V

    .line 1256
    :cond_b4
    iget-object v0, p0, Landroid/media/MediaParser;->mPositionHolder:Landroid/media/internal/exo/extractor/PositionHolder;

    invoke-interface {p1}, Landroid/media/MediaParser$InputReader;->getPosition()J

    move-result-wide v4

    iput-wide v4, v0, Landroid/media/internal/exo/extractor/PositionHolder;->position:J

    .line 1259
    :try_start_bc
    iget-object v0, p0, Landroid/media/MediaParser;->mExtractor:Landroid/media/internal/exo/extractor/Extractor;

    iget-object v4, p0, Landroid/media/MediaParser;->mExtractorInput:Landroid/media/internal/exo/extractor/ExtractorInput;

    iget-object v5, p0, Landroid/media/MediaParser;->mPositionHolder:Landroid/media/internal/exo/extractor/PositionHolder;

    invoke-interface {v0, v4, v5}, Landroid/media/internal/exo/extractor/Extractor;->read(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/extractor/PositionHolder;)I

    move-result v0
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_c6} :catch_d8

    const/4 v4, -0x1

    if-ne v0, v4, :cond_cc

    .line 1269
    iput-object v3, p0, Landroid/media/MediaParser;->mExtractorInput:Landroid/media/internal/exo/extractor/ExtractorInput;

    return v1

    :cond_cc
    if-ne v0, v2, :cond_d7

    .line 1273
    iput-object v3, p0, Landroid/media/MediaParser;->mExtractorInput:Landroid/media/internal/exo/extractor/ExtractorInput;

    .line 1274
    iget-object p0, p0, Landroid/media/MediaParser;->mPositionHolder:Landroid/media/internal/exo/extractor/PositionHolder;

    iget-wide v0, p0, Landroid/media/internal/exo/extractor/PositionHolder;->position:J

    invoke-interface {p1, v0, v1}, Landroid/media/MediaParser$SeekableInputReader;->seekToPosition(J)V

    :cond_d7
    return v2

    :catch_d8
    move-exception v0

    move-object p1, v0

    .line 1261
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaParser;->mLastObservedExceptionName:Ljava/lang/String;

    .line 1262
    instance-of p0, p1, Landroid/media/internal/exo/ParserException;

    if-eqz p0, :cond_f0

    .line 1263
    new-instance p0, Landroid/media/MediaParser$ParsingException;

    check-cast p1, Landroid/media/internal/exo/ParserException;

    invoke-direct {p0, p1, v3}, Landroid/media/MediaParser$ParsingException;-><init>(Landroid/media/internal/exo/ParserException;Landroid/media/MediaParser-IA;)V

    throw p0

    .line 1265
    :cond_f0
    throw p1
.end method

.method public whitelist getLogSessionId()Landroid/media/metrics/LogSessionId;
    .registers 1

    .line 1361
    iget-object p0, p0, Landroid/media/MediaParser;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    sget-object p0, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    return-object p0
.end method

.method public whitelist getParserName()Ljava/lang/String;
    .registers 1

    .line 1172
    iget-object p0, p0, Landroid/media/MediaParser;->mParserName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist release()V
    .registers 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1306
    iput-object v1, v0, Landroid/media/MediaParser;->mExtractorInput:Landroid/media/internal/exo/extractor/ExtractorInput;

    .line 1307
    iput-object v1, v0, Landroid/media/MediaParser;->mExtractor:Landroid/media/internal/exo/extractor/Extractor;

    .line 1308
    iget-boolean v1, v0, Landroid/media/MediaParser;->mReleased:Z

    if-eqz v1, :cond_c

    return-void

    :cond_c
    const/4 v1, 0x1

    .line 1312
    iput-boolean v1, v0, Landroid/media/MediaParser;->mReleased:Z

    .line 1314
    new-instance v1, Landroid/media/MediaParser$$ExternalSyntheticLambda16;

    invoke-direct {v1}, Landroid/media/MediaParser$$ExternalSyntheticLambda16;-><init>()V

    invoke-direct {v0, v1}, Landroid/media/MediaParser;->buildMediaMetricsString(Ljava/util/function/Function;)Ljava/lang/String;

    move-result-object v10

    .line 1315
    new-instance v1, Landroid/media/MediaParser$$ExternalSyntheticLambda17;

    invoke-direct {v1}, Landroid/media/MediaParser$$ExternalSyntheticLambda17;-><init>()V

    invoke-direct {v0, v1}, Landroid/media/MediaParser;->buildMediaMetricsString(Ljava/util/function/Function;)Ljava/lang/String;

    move-result-object v11

    const/4 v1, 0x0

    move v2, v1

    .line 1318
    :goto_23
    iget-object v3, v0, Landroid/media/MediaParser;->mTrackFormats:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, -0x1

    if-ge v2, v3, :cond_42

    .line 1319
    iget-object v3, v0, Landroid/media/MediaParser;->mTrackFormats:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/internal/exo/Format;

    .line 1320
    iget v5, v3, Landroid/media/internal/exo/Format;->width:I

    if-eq v5, v4, :cond_3f

    iget v3, v3, Landroid/media/internal/exo/Format;->height:I

    if-eq v3, v4, :cond_3f

    move v14, v3

    move v13, v5

    goto :goto_44

    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_42
    move v13, v4

    move v14, v13

    .line 1327
    :goto_44
    iget-object v2, v0, Landroid/media/MediaParser;->mParserParameters:Ljava/util/Map;

    .line 1330
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    .line 1328
    const-string v3, "|"

    invoke-static {v3, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1335
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sget v5, Landroid/media/MediaParser;->MEDIAMETRICS_PARAMETER_LIST_MAX_LENGTH:I

    .line 1334
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1332
    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 1339
    invoke-static {}, Landroid/media/internal/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v1

    if-eqz v1, :cond_71

    invoke-direct {v0}, Landroid/media/MediaParser;->getLogSessionIdStringV31()Ljava/lang/String;

    move-result-object v1

    goto :goto_73

    :cond_71
    const-string v1, ""

    :goto_73
    iget-object v2, v0, Landroid/media/MediaParser;->mParserName:Ljava/lang/String;

    iget-boolean v4, v0, Landroid/media/MediaParser;->mCreatedByName:Z

    iget-object v5, v0, Landroid/media/MediaParser;->mParserNamesPool:[Ljava/lang/String;

    .line 1342
    invoke-static {v3, v5}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Landroid/media/MediaParser;->mLastObservedExceptionName:Ljava/lang/String;

    iget-wide v6, v0, Landroid/media/MediaParser;->mResourceByteCount:J

    .line 1344
    invoke-static {v6, v7}, Landroid/media/MediaParser;->addDither(J)J

    move-result-wide v6

    iget-wide v8, v0, Landroid/media/MediaParser;->mDurationMillis:J

    .line 1345
    invoke-static {v8, v9}, Landroid/media/MediaParser;->addDither(J)J

    move-result-wide v8

    move v15, v4

    move-object v4, v3

    move v3, v15

    .line 1338
    invoke-direct/range {v0 .. v14}, Landroid/media/MediaParser;->nativeSubmitMetrics(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public whitelist seek(Landroid/media/MediaParser$SeekPoint;)V
    .registers 5

    .line 1291
    iget-object v0, p0, Landroid/media/MediaParser;->mExtractor:Landroid/media/internal/exo/extractor/Extractor;

    if-nez v0, :cond_d

    .line 1292
    iget-wide v0, p1, Landroid/media/MediaParser$SeekPoint;->position:J

    iput-wide v0, p0, Landroid/media/MediaParser;->mPendingSeekPosition:J

    .line 1293
    iget-wide v0, p1, Landroid/media/MediaParser$SeekPoint;->timeMicros:J

    iput-wide v0, p0, Landroid/media/MediaParser;->mPendingSeekTimeMicros:J

    return-void

    .line 1295
    :cond_d
    iget-wide v1, p1, Landroid/media/MediaParser$SeekPoint;->position:J

    iget-wide p0, p1, Landroid/media/MediaParser$SeekPoint;->timeMicros:J

    invoke-interface {v0, v1, v2, p0, p1}, Landroid/media/internal/exo/extractor/Extractor;->seek(JJ)V

    return-void
.end method

.method public whitelist setLogSessionId(Landroid/media/metrics/LogSessionId;)V
    .registers 2

    .line 1355
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroid/media/MediaParser;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    return-void
.end method

.method public whitelist setParameter(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/MediaParser;
    .registers 5

    .line 1100
    iget-object v0, p0, Landroid/media/MediaParser;->mExtractor:Landroid/media/internal/exo/extractor/Extractor;

    if-nez v0, :cond_fa

    .line 1104
    sget-object v0, Landroid/media/MediaParser;->EXPECTED_TYPE_BY_PARAMETER_NAME:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_48

    .line 1107
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_48

    .line 1108
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " expects a "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but a "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1113
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was passed."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1116
    :cond_48
    :goto_48
    const-string v0, "android.media.mediaparser.ts.mode"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    const-string v0, "single_pmt"

    .line 1117
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    const-string v0, "hls"

    .line 1118
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    const-string v0, "multi_pmt"

    .line 1119
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    goto :goto_80

    .line 1120
    :cond_69
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "android.media.mediaparser.ts.mode does not accept: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1122
    :cond_80
    :goto_80
    const-string v0, "android.media.mediaparser.inBandCryptoInfo"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 1123
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/MediaParser;->mInBandCryptoInfo:Z

    .line 1125
    :cond_91
    const-string v0, "android.media.mediaparser.includeSupplementalData"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 1126
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/MediaParser;->mIncludeSupplementalData:Z

    .line 1128
    :cond_a2
    const-string v0, "android.media.mediaparser.ignoreTimestampOffset"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 1129
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/MediaParser;->mIgnoreTimestampOffset:Z

    .line 1131
    :cond_b3
    const-string v0, "android.media.mediaparser.eagerlyExposeTrackType"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 1132
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/MediaParser;->mEagerlyExposeTrackType:Z

    .line 1134
    :cond_c4
    const-string v0, "android.media.mediaparser.exposeDummySeekMap"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 1135
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/MediaParser;->mExposeDummySeekMap:Z

    .line 1137
    :cond_d5
    const-string v0, "android.media.mediaParser.exposeChunkIndexAsMediaFormat"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 1138
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/MediaParser;->mExposeChunkIndexAsMediaFormat:Z

    .line 1140
    :cond_e6
    const-string v0, "android.media.mediaParser.exposeCaptionFormats"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 1141
    move-object v0, p2

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Landroid/media/MediaParser;->setMuxedCaptionFormats(Ljava/util/List;)V

    .line 1143
    :cond_f4
    iget-object v0, p0, Landroid/media/MediaParser;->mParserParameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 1101
    :cond_fa
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "setParameters() must be called before the first advance() call."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist supportsParameter(Ljava/lang/String;)Z
    .registers 2

    .line 1155
    sget-object p0, Landroid/media/MediaParser;->EXPECTED_TYPE_BY_PARAMETER_NAME:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
