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

.field public static final CONFIGURATION_STATE_NOT_CONFIGURED:I = 0x1

.field public static final CONFIGURATION_STATE_OK:I = 0x0

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA_CHANNEL_STATE:Ljava/lang/String; = "data_channel_state"

.field public static final DATA_CHANNEL_STATE_NO_CONNECTION:I = 0x1

.field public static final DATA_CHANNEL_STATE_OK:I = 0x0

.field public static final DIR_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/voicemail.source.status"

.field public static final ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/voicemail.source.status"

.field public static final NOTIFICATION_CHANNEL_STATE:Ljava/lang/String; = "notification_channel_state"

.field public static final NOTIFICATION_CHANNEL_STATE_MESSAGE_WAITING:I = 0x2

.field public static final NOTIFICATION_CHANNEL_STATE_NO_CONNECTION:I = 0x1

.field public static final NOTIFICATION_CHANNEL_STATE_OK:I = 0x0

.field public static final PHONE_ACCOUNT_COMPONENT_NAME:Ljava/lang/String; = "phone_account_component_name"

.field public static final PHONE_ACCOUNT_ID:Ljava/lang/String; = "phone_account_id"

.field public static final SETTINGS_URI:Ljava/lang/String; = "settings_uri"

.field public static final SOURCE_PACKAGE:Ljava/lang/String; = "source_package"

.field public static final VOICEMAIL_ACCESS_URI:Ljava/lang/String; = "voicemail_access_uri"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 334
    const-string/jumbo v0, "content://com.android.voicemail/status"

    #@3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Landroid/provider/VoicemailContract$Status;->CONTENT_URI:Landroid/net/Uri;

    #@9
    .line 332
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static buildSourceUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 456
    sget-object v0, Landroid/provider/VoicemailContract$Status;->CONTENT_URI:Landroid/net/Uri;

    #@2
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    #@5
    move-result-object v0

    #@6
    .line 457
    const-string/jumbo v1, "source_package"

    #@9
    .line 456
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

.method private static isStatusPresent(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .locals 8
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "statusUri"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 498
    const/4 v6, 0x0

    #@2
    .line 500
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    #@3
    const/4 v3, 0x0

    #@4
    const/4 v4, 0x0

    #@5
    const/4 v5, 0x0

    #@6
    move-object v0, p0

    #@7
    move-object v1, p1

    #@8
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@b
    move-result-object v6

    #@c
    .line 501
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    #@e
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    const/4 v0, 0x1

    #@15
    .line 503
    :goto_0
    if-eqz v6, :cond_0

    #@17
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@1a
    .line 501
    :cond_0
    return v0

    #@1b
    :cond_1
    move v0, v7

    #@1c
    goto :goto_0

    #@1d
    .line 502
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    #@1e
    .line 503
    if-eqz v6, :cond_2

    #@20
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@23
    .line 502
    :cond_2
    throw v0
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
    const/4 v5, 0x0

    #@1
    .line 473
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@4
    move-result-object v0

    #@5
    .line 474
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@8
    move-result-object v3

    #@9
    invoke-static {v3}, Landroid/provider/VoicemailContract$Status;->buildSourceUri(Ljava/lang/String;)Landroid/net/Uri;

    #@c
    move-result-object v1

    #@d
    .line 475
    .local v1, "statusUri":Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    #@f
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    #@12
    .line 476
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "phone_account_component_name"

    #@15
    .line 477
    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@1c
    move-result-object v4

    #@1d
    .line 476
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@20
    .line 478
    const-string/jumbo v3, "phone_account_id"

    #@23
    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@2a
    .line 479
    const-string/jumbo v3, "configuration_state"

    #@2d
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@34
    .line 480
    const-string/jumbo v3, "data_channel_state"

    #@37
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3a
    move-result-object v4

    #@3b
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@3e
    .line 481
    const-string/jumbo v3, "notification_channel_state"

    #@41
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@44
    move-result-object v4

    #@45
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@48
    .line 483
    invoke-static {v0, v1}, Landroid/provider/VoicemailContract$Status;->isStatusPresent(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    #@4b
    move-result v3

    #@4c
    if-eqz v3, :cond_0

    #@4e
    .line 484
    invoke-virtual {v0, v1, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@51
    .line 472
    :goto_0
    return-void

    #@52
    .line 486
    :cond_0
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@55
    goto :goto_0
.end method
