.class public final Landroid/media/tv/TvContract$RecordedPrograms;
.super Ljava/lang/Object;
.source "TvContract.java"

# interfaces
.implements Landroid/media/tv/TvContract$BaseTvColumns;
.implements Landroid/media/tv/TvContract$ProgramColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecordedPrograms"
.end annotation


# static fields
.field public static final whitelist COLUMN_BROADCAST_GENRE:Ljava/lang/String; = "broadcast_genre"

.field public static final whitelist COLUMN_CHANNEL_ID:Ljava/lang/String; = "channel_id"

.field public static final whitelist COLUMN_END_TIME_UTC_MILLIS:Ljava/lang/String; = "end_time_utc_millis"

.field public static final whitelist COLUMN_INPUT_ID:Ljava/lang/String; = "input_id"

.field public static final whitelist COLUMN_INTERNAL_PROVIDER_ID:Ljava/lang/String; = "internal_provider_id"

.field public static final whitelist COLUMN_MULTI_SERIES_ID:Ljava/lang/String; = "multi_series_id"

.field public static final whitelist COLUMN_RECORDING_DATA_BYTES:Ljava/lang/String; = "recording_data_bytes"

.field public static final whitelist COLUMN_RECORDING_DATA_URI:Ljava/lang/String; = "recording_data_uri"

.field public static final whitelist COLUMN_RECORDING_DURATION_MILLIS:Ljava/lang/String; = "recording_duration_millis"

.field public static final whitelist COLUMN_RECORDING_EXPIRE_TIME_UTC_MILLIS:Ljava/lang/String; = "recording_expire_time_utc_millis"

.field public static final whitelist COLUMN_START_TIME_UTC_MILLIS:Ljava/lang/String; = "start_time_utc_millis"

.field public static final whitelist CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/recorded_program"

.field public static final whitelist CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/recorded_program"

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 3043
    const-string v0, "content://android.media.tv/recorded_program"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/media/tv/TvContract$RecordedPrograms;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 3180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
