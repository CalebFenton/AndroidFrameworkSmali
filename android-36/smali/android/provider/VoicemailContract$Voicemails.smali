.class public final Landroid/provider/VoicemailContract$Voicemails;
.super Ljava/lang/Object;
.source "VoicemailContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/OpenableColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/VoicemailContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Voicemails"
.end annotation


# static fields
.field public static final whitelist ARCHIVED:Ljava/lang/String; = "archived"

.field public static final whitelist BACKED_UP:Ljava/lang/String; = "backed_up"

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field public static final whitelist DATE:Ljava/lang/String; = "date"

.field public static final whitelist DELETED:Ljava/lang/String; = "deleted"

.field public static final whitelist DIRTY:Ljava/lang/String; = "dirty"

.field public static final whitelist DIRTY_RETAIN:I = -0x1

.field public static final whitelist DIR_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/voicemails"

.field public static final whitelist DURATION:Ljava/lang/String; = "duration"

.field public static final whitelist HAS_CONTENT:Ljava/lang/String; = "has_content"

.field public static final whitelist IS_OMTP_VOICEMAIL:Ljava/lang/String; = "is_omtp_voicemail"

.field public static final whitelist IS_READ:Ljava/lang/String; = "is_read"

.field public static final whitelist ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/voicemail"

.field public static final whitelist LAST_MODIFIED:Ljava/lang/String; = "last_modified"

.field public static final whitelist MIME_TYPE:Ljava/lang/String; = "mime_type"

.field public static final whitelist NEW:Ljava/lang/String; = "new"

.field public static final whitelist NUMBER:Ljava/lang/String; = "number"

.field public static final whitelist PHONE_ACCOUNT_COMPONENT_NAME:Ljava/lang/String; = "subscription_component_name"

.field public static final whitelist PHONE_ACCOUNT_ID:Ljava/lang/String; = "subscription_id"

.field public static final whitelist RESTORED:Ljava/lang/String; = "restored"

.field public static final whitelist SOURCE_DATA:Ljava/lang/String; = "source_data"

.field public static final whitelist SOURCE_PACKAGE:Ljava/lang/String; = "source_package"

.field public static final greylist-max-o STATE:Ljava/lang/String; = "state"

.field public static greylist-max-o STATE_DELETED:I = 0x0

.field public static greylist-max-o STATE_INBOX:I = 0x0

.field public static greylist-max-o STATE_UNDELETED:I = 0x0

.field public static final whitelist TRANSCRIPTION:Ljava/lang/String; = "transcription"

.field public static final greylist-max-o TRANSCRIPTION_AVAILABLE:I = 0x3

.field public static final greylist-max-o TRANSCRIPTION_FAILED:I = 0x2

.field public static final greylist-max-o TRANSCRIPTION_IN_PROGRESS:I = 0x1

.field public static final greylist-max-o TRANSCRIPTION_NOT_STARTED:I = 0x0

.field public static final greylist-max-o TRANSCRIPTION_STATE:Ljava/lang/String; = "transcription_state"

.field public static final greylist-max-o _DATA:Ljava/lang/String; = "_data"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 168
    nop

    .line 169
    const-string v0, "content://com.android.voicemail/voicemail"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/VoicemailContract$Voicemails;->CONTENT_URI:Landroid/net/Uri;

    .line 214
    const/4 v0, 0x0

    sput v0, Landroid/provider/VoicemailContract$Voicemails;->STATE_INBOX:I

    .line 219
    const/4 v0, 0x1

    sput v0, Landroid/provider/VoicemailContract$Voicemails;->STATE_DELETED:I

    .line 224
    const/4 v0, 0x2

    sput v0, Landroid/provider/VoicemailContract$Voicemails;->STATE_UNDELETED:I

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    return-void
.end method

.method public static whitelist buildSourceUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;

    .line 396
    sget-object v0, Landroid/provider/VoicemailContract$Voicemails;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 397
    const-string/jumbo v1, "source_package"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 398
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 396
    return-object v0
.end method

.method public static greylist-max-o deleteAll(Landroid/content/Context;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 444
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 445
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/VoicemailContract$Voicemails;->buildSourceUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    .line 444
    const-string v3, ""

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static greylist-max-o getContentValues(Landroid/telecom/Voicemail;)Landroid/content/ContentValues;
    .registers 5
    .param p0, "voicemail"    # Landroid/telecom/Voicemail;

    .line 452
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 453
    .local v0, "contentValues":Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/telecom/Voicemail;->getTimestampMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const-string/jumbo v1, "number"

    invoke-virtual {p0}, Landroid/telecom/Voicemail;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-virtual {p0}, Landroid/telecom/Voicemail;->getDuration()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "duration"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const-string/jumbo v1, "source_package"

    invoke-virtual {p0}, Landroid/telecom/Voicemail;->getSourcePackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const-string/jumbo v1, "source_data"

    invoke-virtual {p0}, Landroid/telecom/Voicemail;->getSourceData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    invoke-virtual {p0}, Landroid/telecom/Voicemail;->isRead()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "is_read"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 460
    invoke-virtual {p0}, Landroid/telecom/Voicemail;->getPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    .line 461
    .local v1, "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    if-eqz v1, :cond_6a

    .line 462
    nop

    .line 463
    invoke-virtual {v1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    .line 462
    const-string/jumbo v3, "subscription_component_name"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const-string/jumbo v2, "subscription_id"

    invoke-virtual {v1}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :cond_6a
    invoke-virtual {p0}, Landroid/telecom/Voicemail;->getTranscription()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7a

    .line 468
    const-string/jumbo v2, "transcription"

    invoke-virtual {p0}, Landroid/telecom/Voicemail;->getTranscription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    :cond_7a
    return-object v0
.end method

.method public static greylist-max-o insert(Landroid/content/Context;Ljava/util/List;)I
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/telecom/Voicemail;",
            ">;)I"
        }
    .end annotation

    .line 426
    .local p1, "voicemails":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Voicemail;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 427
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 428
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_23

    .line 429
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Voicemail;

    invoke-static {v3}, Landroid/provider/VoicemailContract$Voicemails;->getContentValues(Landroid/telecom/Voicemail;)Landroid/content/ContentValues;

    move-result-object v3

    .line 430
    .local v3, "contentValues":Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/provider/VoicemailContract$Voicemails;->buildSourceUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 428
    .end local v3    # "contentValues":Landroid/content/ContentValues;
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 432
    .end local v2    # "i":I
    :cond_23
    return v1
.end method

.method public static greylist-max-o insert(Landroid/content/Context;Landroid/telecom/Voicemail;)Landroid/net/Uri;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "voicemail"    # Landroid/telecom/Voicemail;

    .line 411
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 412
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/provider/VoicemailContract$Voicemails;->getContentValues(Landroid/telecom/Voicemail;)Landroid/content/ContentValues;

    move-result-object v1

    .line 413
    .local v1, "contentValues":Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/VoicemailContract$Voicemails;->buildSourceUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method
