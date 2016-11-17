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
.field public static final CONFIGURATION_STATE:Ljava/lang/String; = "configuration_state"

.field public static final CONFIGURATION_STATE_CAN_BE_CONFIGURED:I = 0x2

.field public static final CONFIGURATION_STATE_IGNORE:I = -0x1

.field public static final CONFIGURATION_STATE_NOT_CONFIGURED:I = 0x1

.field public static final CONFIGURATION_STATE_OK:I = 0x0

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA_CHANNEL_STATE:Ljava/lang/String; = "data_channel_state"

.field public static final DATA_CHANNEL_STATE_BAD_CONFIGURATION:I = 0x3

.field public static final DATA_CHANNEL_STATE_COMMUNICATION_ERROR:I = 0x4

.field public static final DATA_CHANNEL_STATE_IGNORE:I = -0x1

.field public static final DATA_CHANNEL_STATE_NO_CONNECTION:I = 0x1

.field public static final DATA_CHANNEL_STATE_NO_CONNECTION_CELLULAR_REQUIRED:I = 0x2

.field public static final DATA_CHANNEL_STATE_OK:I = 0x0

.field public static final DATA_CHANNEL_STATE_SERVER_CONNECTION_ERROR:I = 0x6

.field public static final DATA_CHANNEL_STATE_SERVER_ERROR:I = 0x5

.field public static final DIR_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/voicemail.source.status"

.field public static final ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/voicemail.source.status"

.field public static final NOTIFICATION_CHANNEL_STATE:Ljava/lang/String; = "notification_channel_state"

.field public static final NOTIFICATION_CHANNEL_STATE_IGNORE:I = -0x1

.field public static final NOTIFICATION_CHANNEL_STATE_MESSAGE_WAITING:I = 0x2

.field public static final NOTIFICATION_CHANNEL_STATE_NO_CONNECTION:I = 0x1

.field public static final NOTIFICATION_CHANNEL_STATE_OK:I = 0x0

.field public static final PHONE_ACCOUNT_COMPONENT_NAME:Ljava/lang/String; = "phone_account_component_name"

.field public static final PHONE_ACCOUNT_ID:Ljava/lang/String; = "phone_account_id"

.field public static final QUOTA_OCCUPIED:Ljava/lang/String; = "quota_occupied"

.field public static final QUOTA_TOTAL:Ljava/lang/String; = "quota_total"

.field public static final QUOTA_UNAVAILABLE:I = -0x1

.field public static final SETTINGS_URI:Ljava/lang/String; = "settings_uri"

.field public static final SOURCE_PACKAGE:Ljava/lang/String; = "source_package"

.field public static final VOICEMAIL_ACCESS_URI:Ljava/lang/String; = "voicemail_access_uri"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 347
    const-string/jumbo v0, "content://com.android.voicemail/status"

    #@3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Landroid/provider/VoicemailContract$Status;->CONTENT_URI:Landroid/net/Uri;

    #@9
    .line 345
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static buildSourceUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 543
    sget-object v0, Landroid/provider/VoicemailContract$Status;->CONTENT_URI:Landroid/net/Uri;

    #@2
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    #@5
    move-result-object v0

    #@6
    .line 544
    const-string/jumbo v1, "source_package"

    #@9
    .line 543
    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public static setQuota(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;II)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "occupied"    # I
    .param p3, "total"    # I

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    .line 590
    if-ne p2, v5, :cond_0

    #@3
    if-ne p3, v5, :cond_0

    #@5
    .line 591
    return-void

    #@6
    .line 593
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    #@8
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    #@b
    .line 594
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "phone_account_component_name"

    #@e
    .line 595
    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    #@11
    move-result-object v4

    #@12
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@15
    move-result-object v4

    #@16
    .line 594
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@19
    .line 596
    const-string/jumbo v3, "phone_account_id"

    #@1c
    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@23
    .line 597
    if-eq p2, v5, :cond_1

    #@25
    .line 598
    const-string/jumbo v3, "quota_occupied"

    #@28
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@2f
    .line 600
    :cond_1
    if-eq p3, v5, :cond_2

    #@31
    .line 601
    const-string/jumbo v3, "quota_total"

    #@34
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@3b
    .line 604
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3e
    move-result-object v0

    #@3f
    .line 605
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@42
    move-result-object v3

    #@43
    invoke-static {v3}, Landroid/provider/VoicemailContract$Status;->buildSourceUri(Ljava/lang/String;)Landroid/net/Uri;

    #@46
    move-result-object v1

    #@47
    .line 606
    .local v1, "statusUri":Landroid/net/Uri;
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@4a
    .line 589
    return-void
.end method

.method public static setStatus(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;III)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "configurationState"    # I
    .param p3, "dataChannelState"    # I
    .param p4, "notificationChannelState"    # I

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    .line 560
    new-instance v2, Landroid/content/ContentValues;

    #@3
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    #@6
    .line 561
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "phone_account_component_name"

    #@9
    .line 562
    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    #@c
    move-result-object v4

    #@d
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@10
    move-result-object v4

    #@11
    .line 561
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 563
    const-string/jumbo v3, "phone_account_id"

    #@17
    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@1e
    .line 564
    if-eq p2, v5, :cond_0

    #@20
    .line 565
    const-string/jumbo v3, "configuration_state"

    #@23
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@2a
    .line 567
    :cond_0
    if-eq p3, v5, :cond_1

    #@2c
    .line 568
    const-string/jumbo v3, "data_channel_state"

    #@2f
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@36
    .line 570
    :cond_1
    if-eq p4, v5, :cond_2

    #@38
    .line 571
    const-string/jumbo v3, "notification_channel_state"

    #@3b
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@42
    .line 573
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@45
    move-result-object v0

    #@46
    .line 574
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@49
    move-result-object v3

    #@4a
    invoke-static {v3}, Landroid/provider/VoicemailContract$Status;->buildSourceUri(Ljava/lang/String;)Landroid/net/Uri;

    #@4d
    move-result-object v1

    #@4e
    .line 575
    .local v1, "statusUri":Landroid/net/Uri;
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@51
    .line 559
    return-void
.end method
