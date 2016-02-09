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
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DELETED:Ljava/lang/String; = "deleted"

.field public static final DIRTY:Ljava/lang/String; = "dirty"

.field public static final DIR_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/voicemails"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final HAS_CONTENT:Ljava/lang/String; = "has_content"

.field public static final IS_READ:Ljava/lang/String; = "is_read"

.field public static final ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/voicemail"

.field public static final MIME_TYPE:Ljava/lang/String; = "mime_type"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final PHONE_ACCOUNT_COMPONENT_NAME:Ljava/lang/String; = "subscription_component_name"

.field public static final PHONE_ACCOUNT_ID:Ljava/lang/String; = "subscription_id"

.field public static final SOURCE_DATA:Ljava/lang/String; = "source_data"

.field public static final SOURCE_PACKAGE:Ljava/lang/String; = "source_package"

.field public static final STATE:Ljava/lang/String; = "state"

.field public static STATE_DELETED:I = 0x0

.field public static STATE_INBOX:I = 0x0

.field public static STATE_UNDELETED:I = 0x0

.field public static final TRANSCRIPTION:Ljava/lang/String; = "transcription"

.field public static final _DATA:Ljava/lang/String; = "_data"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 124
    const-string/jumbo v0, "content://com.android.voicemail/voicemail"

    #@3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@6
    move-result-object v0

    #@7
    .line 123
    sput-object v0, Landroid/provider/VoicemailContract$Voicemails;->CONTENT_URI:Landroid/net/Uri;

    #@9
    .line 164
    const/4 v0, 0x0

    #@a
    sput v0, Landroid/provider/VoicemailContract$Voicemails;->STATE_INBOX:I

    #@c
    .line 169
    const/4 v0, 0x1

    #@d
    sput v0, Landroid/provider/VoicemailContract$Voicemails;->STATE_DELETED:I

    #@f
    .line 174
    const/4 v0, 0x2

    #@10
    sput v0, Landroid/provider/VoicemailContract$Voicemails;->STATE_UNDELETED:I

    #@12
    .line 117
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static buildSourceUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 252
    sget-object v0, Landroid/provider/VoicemailContract$Voicemails;->CONTENT_URI:Landroid/net/Uri;

    #@2
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    #@5
    move-result-object v0

    #@6
    .line 253
    const-string/jumbo v1, "source_package"

    #@9
    .line 252
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

.method public static deleteAll(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 300
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v0

    #@4
    .line 301
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-static {v1}, Landroid/provider/VoicemailContract$Voicemails;->buildSourceUri(Ljava/lang/String;)Landroid/net/Uri;

    #@b
    move-result-object v1

    #@c
    const-string/jumbo v2, ""

    #@f
    const/4 v3, 0x0

    #@10
    new-array v3, v3, [Ljava/lang/String;

    #@12
    .line 300
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    #@15
    move-result v0

    #@16
    return v0
.end method

.method private static getContentValues(Landroid/telecom/Voicemail;)Landroid/content/ContentValues;
    .locals 6
    .param p0, "voicemail"    # Landroid/telecom/Voicemail;

    #@0
    .prologue
    .line 308
    new-instance v0, Landroid/content/ContentValues;

    #@2
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    #@5
    .line 309
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "date"

    #@8
    invoke-virtual {p0}, Landroid/telecom/Voicemail;->getTimestampMillis()J

    #@b
    move-result-wide v4

    #@c
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@13
    .line 310
    const-string/jumbo v2, "number"

    #@16
    invoke-virtual {p0}, Landroid/telecom/Voicemail;->getNumber()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@1d
    .line 311
    const-string/jumbo v2, "duration"

    #@20
    invoke-virtual {p0}, Landroid/telecom/Voicemail;->getDuration()J

    #@23
    move-result-wide v4

    #@24
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@2b
    .line 312
    const-string/jumbo v2, "source_package"

    #@2e
    invoke-virtual {p0}, Landroid/telecom/Voicemail;->getSourcePackage()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@35
    .line 313
    const-string/jumbo v2, "source_data"

    #@38
    invoke-virtual {p0}, Landroid/telecom/Voicemail;->getSourceData()Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@3f
    .line 314
    const-string/jumbo v3, "is_read"

    #@42
    invoke-virtual {p0}, Landroid/telecom/Voicemail;->isRead()Z

    #@45
    move-result v2

    #@46
    if-eqz v2, :cond_2

    #@48
    const/4 v2, 0x1

    #@49
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4c
    move-result-object v2

    #@4d
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@50
    .line 316
    invoke-virtual {p0}, Landroid/telecom/Voicemail;->getPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    #@53
    move-result-object v1

    #@54
    .line 317
    .local v1, "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    if-eqz v1, :cond_0

    #@56
    .line 318
    const-string/jumbo v2, "subscription_component_name"

    #@59
    .line 319
    invoke-virtual {v1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    #@5c
    move-result-object v3

    #@5d
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@60
    move-result-object v3

    #@61
    .line 318
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@64
    .line 320
    const-string/jumbo v2, "subscription_id"

    #@67
    invoke-virtual {v1}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    #@6a
    move-result-object v3

    #@6b
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@6e
    .line 323
    :cond_0
    invoke-virtual {p0}, Landroid/telecom/Voicemail;->getTranscription()Ljava/lang/String;

    #@71
    move-result-object v2

    #@72
    if-eqz v2, :cond_1

    #@74
    .line 324
    const-string/jumbo v2, "transcription"

    #@77
    invoke-virtual {p0}, Landroid/telecom/Voicemail;->getTranscription()Ljava/lang/String;

    #@7a
    move-result-object v3

    #@7b
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@7e
    .line 327
    :cond_1
    return-object v0

    #@7f
    .line 314
    .end local v1    # "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    :cond_2
    const/4 v2, 0x0

    #@80
    goto :goto_0
.end method

.method public static insert(Landroid/content/Context;Ljava/util/List;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Voicemail;",
            ">;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 282
    .local p1, "voicemails":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Voicemail;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v0

    #@4
    .line 283
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@7
    move-result v2

    #@8
    .line 284
    .local v2, "count":I
    const/4 v3, 0x0

    #@9
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    #@b
    .line 285
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v4

    #@f
    check-cast v4, Landroid/telecom/Voicemail;

    #@11
    invoke-static {v4}, Landroid/provider/VoicemailContract$Voicemails;->getContentValues(Landroid/telecom/Voicemail;)Landroid/content/ContentValues;

    #@14
    move-result-object v1

    #@15
    .line 286
    .local v1, "contentValues":Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@18
    move-result-object v4

    #@19
    invoke-static {v4}, Landroid/provider/VoicemailContract$Voicemails;->buildSourceUri(Ljava/lang/String;)Landroid/net/Uri;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v0, v4, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@20
    .line 284
    add-int/lit8 v3, v3, 0x1

    #@22
    goto :goto_0

    #@23
    .line 288
    .end local v1    # "contentValues":Landroid/content/ContentValues;
    :cond_0
    return v2
.end method

.method public static insert(Landroid/content/Context;Landroid/telecom/Voicemail;)Landroid/net/Uri;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "voicemail"    # Landroid/telecom/Voicemail;

    #@0
    .prologue
    .line 267
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v0

    #@4
    .line 268
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/provider/VoicemailContract$Voicemails;->getContentValues(Landroid/telecom/Voicemail;)Landroid/content/ContentValues;

    #@7
    move-result-object v1

    #@8
    .line 269
    .local v1, "contentValues":Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    invoke-static {v2}, Landroid/provider/VoicemailContract$Voicemails;->buildSourceUri(Ljava/lang/String;)Landroid/net/Uri;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@13
    move-result-object v2

    #@14
    return-object v2
.end method
