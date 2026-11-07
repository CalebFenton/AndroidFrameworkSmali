.class public final Landroid/provider/VoicemailContract$Status;
.super Ljava/lang/Object;
.source "VoicemailContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/VoicemailContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Status"
.end annotation


# static fields
.field public static final whitelist CONFIGURATION_STATE:Ljava/lang/String; = "configuration_state"

.field public static final whitelist CONFIGURATION_STATE_CAN_BE_CONFIGURED:I = 0x2

.field public static final whitelist CONFIGURATION_STATE_CONFIGURING:I = 0x3

.field public static final whitelist CONFIGURATION_STATE_DISABLED:I = 0x5

.field public static final whitelist CONFIGURATION_STATE_FAILED:I = 0x4

.field public static final whitelist CONFIGURATION_STATE_NOT_CONFIGURED:I = 0x1

.field public static final whitelist CONFIGURATION_STATE_OK:I = 0x0

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field public static final whitelist DATA_CHANNEL_STATE:Ljava/lang/String; = "data_channel_state"

.field public static final whitelist DATA_CHANNEL_STATE_BAD_CONFIGURATION:I = 0x3

.field public static final whitelist DATA_CHANNEL_STATE_COMMUNICATION_ERROR:I = 0x4

.field public static final whitelist DATA_CHANNEL_STATE_NO_CONNECTION:I = 0x1

.field public static final whitelist DATA_CHANNEL_STATE_NO_CONNECTION_CELLULAR_REQUIRED:I = 0x2

.field public static final whitelist DATA_CHANNEL_STATE_OK:I = 0x0

.field public static final whitelist DATA_CHANNEL_STATE_SERVER_CONNECTION_ERROR:I = 0x6

.field public static final whitelist DATA_CHANNEL_STATE_SERVER_ERROR:I = 0x5

.field public static final whitelist DIR_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/voicemail.source.status"

.field public static final whitelist ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/voicemail.source.status"

.field public static final whitelist NOTIFICATION_CHANNEL_STATE:Ljava/lang/String; = "notification_channel_state"

.field public static final whitelist NOTIFICATION_CHANNEL_STATE_MESSAGE_WAITING:I = 0x2

.field public static final whitelist NOTIFICATION_CHANNEL_STATE_NO_CONNECTION:I = 0x1

.field public static final whitelist NOTIFICATION_CHANNEL_STATE_OK:I = 0x0

.field public static final whitelist PHONE_ACCOUNT_COMPONENT_NAME:Ljava/lang/String; = "phone_account_component_name"

.field public static final whitelist PHONE_ACCOUNT_ID:Ljava/lang/String; = "phone_account_id"

.field public static final whitelist QUOTA_OCCUPIED:Ljava/lang/String; = "quota_occupied"

.field public static final whitelist QUOTA_TOTAL:Ljava/lang/String; = "quota_total"

.field public static final whitelist QUOTA_UNAVAILABLE:I = -0x1

.field public static final whitelist SETTINGS_URI:Ljava/lang/String; = "settings_uri"

.field public static final whitelist SOURCE_PACKAGE:Ljava/lang/String; = "source_package"

.field public static final whitelist SOURCE_TYPE:Ljava/lang/String; = "source_type"

.field public static final whitelist VOICEMAIL_ACCESS_URI:Ljava/lang/String; = "voicemail_access_uri"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 478
    const-string v0, "content://com.android.voicemail/status"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/VoicemailContract$Status;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    return-void
.end method

.method public static whitelist buildSourceUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;

    .line 697
    sget-object v0, Landroid/provider/VoicemailContract$Status;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 698
    const-string/jumbo v1, "source_package"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 697
    return-object v0
.end method
