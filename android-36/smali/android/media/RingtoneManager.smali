.class public Landroid/media/RingtoneManager;
.super Ljava/lang/Object;
.source "RingtoneManager.java"


# static fields
.field public static final whitelist ACTION_RINGTONE_PICKER:Ljava/lang/String; = "android.intent.action.RINGTONE_PICKER"

.field public static final greylist-max-o EXTRA_RINGTONE_AUDIO_ATTRIBUTES_FLAGS:Ljava/lang/String; = "android.intent.extra.ringtone.AUDIO_ATTRIBUTES_FLAGS"

.field public static final whitelist EXTRA_RINGTONE_DEFAULT_URI:Ljava/lang/String; = "android.intent.extra.ringtone.DEFAULT_URI"

.field public static final whitelist EXTRA_RINGTONE_EXISTING_URI:Ljava/lang/String; = "android.intent.extra.ringtone.EXISTING_URI"

.field public static final whitelist EXTRA_RINGTONE_INCLUDE_DRM:Ljava/lang/String; = "android.intent.extra.ringtone.INCLUDE_DRM"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_RINGTONE_PICKED_URI:Ljava/lang/String; = "android.intent.extra.ringtone.PICKED_URI"

.field public static final whitelist EXTRA_RINGTONE_SHOW_DEFAULT:Ljava/lang/String; = "android.intent.extra.ringtone.SHOW_DEFAULT"

.field public static final whitelist EXTRA_RINGTONE_SHOW_SILENT:Ljava/lang/String; = "android.intent.extra.ringtone.SHOW_SILENT"

.field public static final whitelist EXTRA_RINGTONE_TITLE:Ljava/lang/String; = "android.intent.extra.ringtone.TITLE"

.field public static final whitelist EXTRA_RINGTONE_TYPE:Ljava/lang/String; = "android.intent.extra.ringtone.TYPE"

.field public static final whitelist ID_COLUMN_INDEX:I = 0x0

.field private static final greylist-max-o INTERNAL_COLUMNS:[Ljava/lang/String;

.field private static final greylist-max-o MEDIA_COLUMNS:[Ljava/lang/String;

.field private static final greylist-max-o TAG:Ljava/lang/String; = "RingtoneManager"

.field public static final whitelist TITLE_COLUMN_INDEX:I = 0x1

.field public static final whitelist TYPE_ALARM:I = 0x4

.field public static final whitelist TYPE_ALL:I = 0x7

.field public static final whitelist TYPE_NOTIFICATION:I = 0x2

.field public static final whitelist TYPE_RINGTONE:I = 0x1

.field public static final whitelist URI_COLUMN_INDEX:I = 0x2


# instance fields
.field private final greylist-max-o mActivity:Landroid/app/Activity;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist mCursor:Landroid/database/Cursor;

.field private final greylist-max-o mFilterColumns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mIncludeParentRingtones:Z

.field private greylist-max-o mPreviousRingtone:Landroid/media/Ringtone;

.field private greylist-max-o mStopPreviousRingtone:Z

.field private greylist-max-o mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 216
    const-string v0, "_id"

    const-string v1, "title"

    const-string v2, "title_key"

    filled-new-array {v0, v1, v1, v2}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/media/RingtoneManager;->INTERNAL_COLUMNS:[Ljava/lang/String;

    .line 223
    filled-new-array {v0, v1, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/RingtoneManager;->MEDIA_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 274
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/RingtoneManager;-><init>(Landroid/app/Activity;Z)V

    .line 275
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/app/Activity;Z)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "includeParentRingtones"    # Z

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/RingtoneManager;->mType:I

    .line 260
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 262
    iput-boolean v0, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    .line 288
    iput-object p1, p0, Landroid/media/RingtoneManager;->mActivity:Landroid/app/Activity;

    .line 289
    iput-object p1, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    .line 290
    iget v0, p0, Landroid/media/RingtoneManager;->mType:I

    invoke-virtual {p0, v0}, Landroid/media/RingtoneManager;->setType(I)V

    .line 291
    iput-boolean p2, p0, Landroid/media/RingtoneManager;->mIncludeParentRingtones:Z

    .line 292
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 302
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;Z)V

    .line 303
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "includeParentRingtones"    # Z

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/RingtoneManager;->mType:I

    .line 260
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 262
    iput-boolean v0, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/RingtoneManager;->mActivity:Landroid/app/Activity;

    .line 316
    iput-object p1, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    .line 317
    iget v0, p0, Landroid/media/RingtoneManager;->mType:I

    invoke-virtual {p0, v0}, Landroid/media/RingtoneManager;->setType(I)V

    .line 318
    iput-boolean p2, p0, Landroid/media/RingtoneManager;->mIncludeParentRingtones:Z

    .line 319
    return-void
.end method

.method private static blacklist computeDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .line 1263
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultRingtoneFilename(I)Ljava/lang/String;

    move-result-object v1

    .line 1264
    .local v1, "filename":Ljava/lang/String;
    invoke-static {p1}, Landroid/media/RingtoneManager;->getQueryStringForType(I)Ljava/lang/String;

    move-result-object v2

    .line 1265
    .local v2, "whichAudio":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_display_name=? AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "=?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1266
    .local v6, "where":Ljava/lang/String;
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1267
    .local v4, "baseUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "1"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1271
    .local v3, "cursor":Landroid/database/Cursor;
    :try_start_38
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 1272
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1273
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v4, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 1272
    invoke-virtual {v0, v5}, Landroid/content/ContentResolver;->canonicalizeOrElse(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0
    :try_end_4f
    .catchall {:try_start_38 .. :try_end_4f} :catchall_5d

    .line 1274
    .local v0, "ringtoneUri":Landroid/net/Uri;
    nop

    .line 1276
    if-eqz v3, :cond_55

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1274
    :cond_55
    return-object v0

    .line 1276
    .end local v0    # "ringtoneUri":Landroid/net/Uri;
    :cond_56
    if-eqz v3, :cond_5b

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1278
    .end local v3    # "cursor":Landroid/database/Cursor;
    :cond_5b
    const/4 v0, 0x0

    return-object v0

    .line 1267
    .restart local v3    # "cursor":Landroid/database/Cursor;
    :catchall_5d
    move-exception v0

    move-object v5, v0

    if-eqz v3, :cond_69

    :try_start_61
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_65

    goto :goto_69

    :catchall_65
    move-exception v0

    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_69
    :goto_69
    throw v5
.end method

.method private static greylist-max-o constructBooleanTrueWhereClause(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 716
    .local p0, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 718
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 719
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_14
    if-ltz v1, :cond_28

    .line 722
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=1 or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    .line 725
    .end local v1    # "i":I
    :cond_28
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_37

    .line 727
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 730
    :cond_37
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o createPackageContextAsUser(Landroid/content/Context;I)Landroid/content/Context;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 1217
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1218
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 1217
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    .line 1219
    :catch_e
    move-exception v0

    .line 1220
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "RingtoneManager"

    const-string v2, "Unable to create package context"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1221
    const/4 v1, 0x0

    return-object v1
.end method

.method public static whitelist ensureDefaultRingtones(Landroid/content/Context;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1236
    const/4 v0, 0x2

    const/4 v1, 0x4

    const/4 v2, 0x1

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    const/4 v1, 0x0

    move v3, v1

    :goto_9
    const/4 v4, 0x3

    if-ge v3, v4, :cond_30

    aget v4, v0, v3

    .line 1243
    .local v4, "type":I
    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultRingtoneSetting(I)Ljava/lang/String;

    move-result-object v5

    .line 1244
    .local v5, "setting":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_1d

    .line 1245
    goto :goto_2d

    .line 1249
    :cond_1d
    invoke-static {p0, v4}, Landroid/media/RingtoneManager;->computeDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v6

    .line 1250
    .local v6, "ringtoneUri":Landroid/net/Uri;
    if-eqz v6, :cond_2d

    .line 1251
    invoke-static {p0, v4, v6}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 1252
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1236
    .end local v4    # "type":I
    .end local v5    # "setting":Ljava/lang/String;
    .end local v6    # "ringtoneUri":Landroid/net/Uri;
    :cond_2d
    :goto_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1255
    :cond_30
    return-void
.end method

.method public static whitelist getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .line 888
    invoke-static {p1}, Landroid/media/RingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v0

    .line 889
    .local v0, "setting":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 890
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 891
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 890
    invoke-static {v2, v0, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 892
    .local v2, "uriString":Ljava/lang/String;
    if-eqz v2, :cond_1a

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 896
    .local v1, "ringtoneUri":Landroid/net/Uri;
    :cond_1a
    if-eqz v1, :cond_2a

    .line 897
    invoke-static {v1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v4

    if-ne v3, v4, :cond_2a

    .line 898
    invoke-static {v1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 901
    :cond_2a
    return-object v1
.end method

.method public static greylist-max-o getCacheForType(I)Landroid/net/Uri;
    .registers 2
    .param p0, "type"    # I

    .line 1052
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getCacheForType(II)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getCacheForType(II)Landroid/net/Uri;
    .registers 3
    .param p0, "type"    # I
    .param p1, "userId"    # I

    .line 1057
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_b

    .line 1058
    sget-object v0, Landroid/provider/Settings$System;->RINGTONE_CACHE_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 1059
    :cond_b
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_16

    .line 1060
    sget-object v0, Landroid/provider/Settings$System;->NOTIFICATION_SOUND_CACHE_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 1062
    :cond_16
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_21

    .line 1063
    sget-object v0, Landroid/provider/Settings$System;->ALARM_ALERT_CACHE_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 1065
    :cond_21
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist getDefaultRingtoneFilename(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .line 1291
    packed-switch p0, :pswitch_data_1e

    .line 1295
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1294
    :pswitch_9
    const-string v0, "ro.config.alarm_alert"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1293
    :pswitch_10
    const-string v0, "ro.config.notification_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1292
    :pswitch_17
    const-string v0, "ro.config.ringtone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_17
        :pswitch_10
        :pswitch_3
        :pswitch_9
    .end packed-switch
.end method

.method private static blacklist getDefaultRingtoneSetting(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .line 1282
    packed-switch p0, :pswitch_data_12

    .line 1286
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1285
    :pswitch_9
    const-string v0, "alarm_alert_set"

    return-object v0

    .line 1284
    :pswitch_c
    const-string v0, "notification_sound_set"

    return-object v0

    .line 1283
    :pswitch_f
    const-string v0, "ringtone_set"

    return-object v0

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_c
        :pswitch_3
        :pswitch_9
    .end packed-switch
.end method

.method public static whitelist getDefaultType(Landroid/net/Uri;)I
    .registers 7
    .param p0, "defaultRingtoneUri"    # Landroid/net/Uri;

    .line 1088
    invoke-static {p0}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    .line 1089
    const/4 v0, -0x1

    if-nez p0, :cond_8

    .line 1090
    return v0

    .line 1093
    :cond_8
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->enableRingtoneHapticsCustomization()Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_4a

    .line 1094
    invoke-static {p0}, Landroid/media/Utils;->hasVibration(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 1096
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 1097
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1098
    return v4

    .line 1099
    :cond_28
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 1100
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1101
    return v3

    .line 1102
    :cond_39
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    .line 1103
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 1104
    return v2

    .line 1108
    :cond_4a
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 1109
    return v4

    .line 1110
    :cond_53
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 1111
    return v3

    .line 1112
    :cond_5c
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 1113
    return v2

    .line 1115
    :cond_65
    return v0
.end method

.method public static whitelist getDefaultUri(I)Landroid/net/Uri;
    .registers 2
    .param p0, "type"    # I

    .line 1129
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_7

    .line 1130
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    return-object v0

    .line 1131
    :cond_7
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_e

    .line 1132
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    return-object v0

    .line 1133
    :cond_e
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_15

    .line 1134
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    return-object v0

    .line 1136
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method private static final greylist-max-o getExternalDirectoryForType(I)Ljava/lang/String;
    .registers 4
    .param p0, "type"    # I

    .line 1026
    packed-switch p0, :pswitch_data_26

    .line 1034
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported ringtone type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1032
    :pswitch_1c
    sget-object v0, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    return-object v0

    .line 1030
    :pswitch_1f
    sget-object v0, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    return-object v0

    .line 1028
    :pswitch_22
    sget-object v0, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    return-object v0

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_22
        :pswitch_1f
        :pswitch_3
        :pswitch_1c
    .end packed-switch
.end method

.method private greylist getInternalRingtones()Landroid/database/Cursor;
    .registers 7

    .line 667
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/media/RingtoneManager;->INTERNAL_COLUMNS:[Ljava/lang/String;

    iget-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 669
    invoke-static {v0}, Landroid/media/RingtoneManager;->constructBooleanTrueWhereClause(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 667
    const/4 v4, 0x0

    const-string v5, "title_key"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/RingtoneManager;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 671
    .local v1, "res":Landroid/database/Cursor;
    new-instance v0, Landroid/media/ExternalRingtonesCursorWrapper;

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/media/ExternalRingtonesCursorWrapper;-><init>(Landroid/database/Cursor;Landroid/net/Uri;)V

    return-object v0
.end method

.method private greylist-max-o getMediaRingtones()Landroid/database/Cursor;
    .registers 4

    .line 675
    iget-object v0, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/media/RingtoneManager;->getMediaRingtones(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 676
    .local v0, "res":Landroid/database/Cursor;
    new-instance v1, Landroid/media/ExternalRingtonesCursorWrapper;

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v0, v2}, Landroid/media/ExternalRingtonesCursorWrapper;-><init>(Landroid/database/Cursor;Landroid/net/Uri;)V

    return-object v1
.end method

.method private greylist-max-r getMediaRingtones(Landroid/content/Context;)Landroid/database/Cursor;
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .line 683
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/media/RingtoneManager;->MEDIA_COLUMNS:[Ljava/lang/String;

    iget-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 685
    invoke-static {v0}, Landroid/media/RingtoneManager;->constructBooleanTrueWhereClause(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 683
    const/4 v4, 0x0

    const-string v5, "title_key"

    move-object v0, p0

    move-object v6, p1

    .end local p1    # "context":Landroid/content/Context;
    .local v6, "context":Landroid/content/Context;
    invoke-direct/range {v0 .. v6}, Landroid/media/RingtoneManager;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method private greylist-max-o getParentProfileRingtones()Landroid/database/Cursor;
    .registers 8

    .line 455
    iget-object v0, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 456
    .local v0, "um":Landroid/os/UserManager;
    iget-object v1, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 457
    .local v1, "parentInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_38

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    iget-object v3, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    if-eq v2, v3, :cond_38

    .line 458
    iget-object v2, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->createPackageContextAsUser(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v2

    .line 459
    .local v2, "parentContext":Landroid/content/Context;
    if-eqz v2, :cond_38

    .line 463
    invoke-direct {p0, v2}, Landroid/media/RingtoneManager;->getMediaRingtones(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v3

    .line 464
    .local v3, "res":Landroid/database/Cursor;
    new-instance v4, Landroid/media/ExternalRingtonesCursorWrapper;

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5, v6}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Landroid/media/ExternalRingtonesCursorWrapper;-><init>(Landroid/database/Cursor;Landroid/net/Uri;)V

    return-object v4

    .line 468
    .end local v2    # "parentContext":Landroid/content/Context;
    .end local v3    # "res":Landroid/database/Cursor;
    :cond_38
    const/4 v2, 0x0

    return-object v2
.end method

.method private static blacklist getQueryStringForType(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .line 1300
    packed-switch p0, :pswitch_data_12

    .line 1304
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1303
    :pswitch_9
    const-string v0, "is_alarm"

    return-object v0

    .line 1302
    :pswitch_c
    const-string v0, "is_notification"

    return-object v0

    .line 1301
    :pswitch_f
    const-string v0, "is_ringtone"

    return-object v0

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_c
        :pswitch_3
        :pswitch_9
    .end packed-switch
.end method

.method public static whitelist getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .line 770
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;IZ)Landroid/media/Ringtone;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getRingtone(Landroid/content/Context;Landroid/net/Uri;ILandroid/media/VolumeShaper$Configuration;Z)Landroid/media/Ringtone;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;
    .param p2, "streamType"    # I
    .param p3, "volumeShaperConfig"    # Landroid/media/VolumeShaper$Configuration;
    .param p4, "createLocalMediaPlayer"    # Z

    .line 853
    const-string v0, "Failed to open ringtone "

    const-string v1, "RingtoneManager"

    const/4 v2, 0x0

    :try_start_5
    new-instance v3, Landroid/media/Ringtone;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Landroid/media/Ringtone;-><init>(Landroid/content/Context;Z)V

    .line 854
    .local v3, "r":Landroid/media/Ringtone;
    if-ltz p2, :cond_10

    .line 856
    invoke-virtual {v3, p2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 859
    :cond_10
    invoke-virtual {v3, p3}, Landroid/media/Ringtone;->setVolumeShaperConfig(Landroid/media/VolumeShaper$Configuration;)V

    .line 860
    invoke-virtual {v3, p1, p3}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;Landroid/media/VolumeShaper$Configuration;)V

    .line 861
    if-eqz p4, :cond_33

    .line 862
    invoke-virtual {v3}, Landroid/media/Ringtone;->createLocalMediaPlayer()Z

    move-result v4

    if-nez v4, :cond_33

    .line 863
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_32} :catch_34

    .line 864
    return-object v2

    .line 867
    :cond_33
    return-object v3

    .line 868
    .end local v3    # "r":Landroid/media/Ringtone;
    :catch_34
    move-exception v3

    .line 869
    .local v3, "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    .end local v3    # "ex":Ljava/lang/Exception;
    return-object v2
.end method

.method private static greylist getRingtone(Landroid/content/Context;Landroid/net/Uri;IZ)Landroid/media/Ringtone;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;
    .param p2, "streamType"    # I
    .param p3, "createLocalMediaPlayer"    # Z

    .line 845
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;ILandroid/media/VolumeShaper$Configuration;Z)Landroid/media/Ringtone;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getRingtone(Landroid/content/Context;Landroid/net/Uri;Landroid/media/VolumeShaper$Configuration;)Landroid/media/Ringtone;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;
    .param p2, "volumeShaperConfig"    # Landroid/media/VolumeShaper$Configuration;

    .line 791
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, p2, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;ILandroid/media/VolumeShaper$Configuration;Z)Landroid/media/Ringtone;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getRingtone(Landroid/content/Context;Landroid/net/Uri;Landroid/media/VolumeShaper$Configuration;Landroid/media/AudioAttributes;)Landroid/media/Ringtone;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;
    .param p2, "volumeShaperConfig"    # Landroid/media/VolumeShaper$Configuration;
    .param p3, "audioAttributes"    # Landroid/media/AudioAttributes;

    .line 812
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p2, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;ILandroid/media/VolumeShaper$Configuration;Z)Landroid/media/Ringtone;

    move-result-object v0

    .line 814
    .local v0, "ringtone":Landroid/media/Ringtone;
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->muteHapticChannelForVibration(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 815
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1, p3}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    .line 816
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setHapticChannelsMuted(Z)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p3

    .line 818
    :cond_1a
    if-eqz v0, :cond_3f

    .line 819
    invoke-virtual {v0, p3}, Landroid/media/Ringtone;->setAudioAttributesField(Landroid/media/AudioAttributes;)V

    .line 820
    invoke-virtual {v0}, Landroid/media/Ringtone;->createLocalMediaPlayer()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 821
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to open ringtone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RingtoneManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    const/4 v1, 0x0

    return-object v1

    .line 825
    :cond_3f
    return-object v0
.end method

.method public static blacklist getRingtone(Landroid/content/Context;Landroid/net/Uri;Landroid/media/VolumeShaper$Configuration;Z)Landroid/media/Ringtone;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;
    .param p2, "volumeShaperConfig"    # Landroid/media/VolumeShaper$Configuration;
    .param p3, "createLocalMediaPlayer"    # Z

    .line 801
    const/4 v0, -0x1

    invoke-static {p0, p1, v0, p2, p3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;ILandroid/media/VolumeShaper$Configuration;Z)Landroid/media/Ringtone;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getRingtoneUriForRestore(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/net/Uri;
    .registers 16
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "ringtoneType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 522
    if-nez p1, :cond_4

    .line 524
    const/4 v0, 0x0

    return-object v0

    .line 528
    :cond_4
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 531
    .local v1, "canonicalUri":Landroid/net/Uri;
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 532
    .local v2, "ringtoneUri":Landroid/net/Uri;
    if-eqz v2, :cond_13

    .line 534
    invoke-virtual {p0, v2}, Landroid/content/ContentResolver;->canonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 535
    .end local v2    # "ringtoneUri":Landroid/net/Uri;
    .local v0, "ringtoneUri":Landroid/net/Uri;
    return-object v0

    .line 539
    .end local v0    # "ringtoneUri":Landroid/net/Uri;
    .restart local v2    # "ringtoneUri":Landroid/net/Uri;
    :cond_13
    const-string v0, "title"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 540
    .local v3, "title":Ljava/lang/String;
    invoke-static {v1}, Landroid/content/ContentUris;->removeId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    .line 541
    .local v6, "baseUri":Landroid/net/Uri;
    const-string v4, ""

    .line 542
    .local v4, "ringtoneTypeSelection":Ljava/lang/String;
    packed-switch p2, :pswitch_data_13e

    .line 553
    :pswitch_2e
    move-object v5, p0

    .end local p0    # "contentResolver":Landroid/content/ContentResolver;
    .local v5, "contentResolver":Landroid/content/ContentResolver;
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown ringtone type: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 550
    .end local v5    # "contentResolver":Landroid/content/ContentResolver;
    .restart local p0    # "contentResolver":Landroid/content/ContentResolver;
    :pswitch_48
    const-string v4, "is_alarm"

    .line 551
    goto :goto_51

    .line 547
    :pswitch_4b
    const-string v4, "is_notification"

    .line 548
    goto :goto_51

    .line 544
    :pswitch_4e
    const-string v4, "is_ringtone"

    .line 545
    nop

    .line 556
    :goto_51
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "=1 AND "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "=?"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 557
    .local v8, "selection":Ljava/lang/String;
    const/4 v12, 0x0

    .line 559
    .local v12, "cursor":Landroid/database/Cursor;
    :try_start_6f
    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v9
    :try_end_79
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6f .. :try_end_79} :catch_122

    .line 560
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, p0

    .end local p0    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v5    # "contentResolver":Landroid/content/ContentResolver;
    :try_start_7c
    invoke-virtual/range {v5 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_80
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7c .. :try_end_80} :catch_11f

    .line 570
    .end local v12    # "cursor":Landroid/database/Cursor;
    .local p0, "cursor":Landroid/database/Cursor;
    nop

    .line 571
    if-eqz p0, :cond_106

    .line 573
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_ea

    .line 576
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v7, 0x1

    if-gt v0, v7, :cond_ca

    .line 585
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 586
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v6, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 587
    .end local v2    # "ringtoneUri":Landroid/net/Uri;
    .restart local v0    # "ringtoneUri":Landroid/net/Uri;
    invoke-static {p0}, Landroid/os/FileUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 594
    invoke-virtual {v5, v0}, Landroid/content/ContentResolver;->canonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 595
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Find a valid result: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "RingtoneManager"

    invoke-static {v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    return-object v0

    .line 589
    .end local v0    # "ringtoneUri":Landroid/net/Uri;
    .restart local v2    # "ringtoneUri":Landroid/net/Uri;
    :cond_bf
    invoke-static {p0}, Landroid/os/FileUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 590
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v7, "Failed to read row from the result."

    invoke-direct {v0, v7}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 577
    :cond_ca
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 580
    .local v0, "resultCount":I
    invoke-static {p0}, Landroid/os/FileUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 581
    new-instance v7, Ljava/io/FileNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Find multiple ringtone candidates by title+ringtone_type query: count: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 574
    .end local v0    # "resultCount":I
    :cond_ea
    invoke-static {p0}, Landroid/os/FileUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 575
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No item found for "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 572
    :cond_106
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing cursor for "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 568
    .end local p0    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "cursor":Landroid/database/Cursor;
    :catch_11f
    move-exception v0

    move-object p0, v0

    goto :goto_125

    .end local v5    # "contentResolver":Landroid/content/ContentResolver;
    .local p0, "contentResolver":Landroid/content/ContentResolver;
    :catch_122
    move-exception v0

    move-object v5, p0

    move-object p0, v0

    .line 569
    .restart local v5    # "contentResolver":Landroid/content/ContentResolver;
    .local p0, "e":Ljava/lang/IllegalArgumentException;
    :goto_125
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Volume not found for "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_13e
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_4b
        :pswitch_2e
        :pswitch_48
    .end packed-switch
.end method

.method private static greylist-max-o getSettingForType(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .line 1039
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_7

    .line 1040
    const-string v0, "ringtone"

    return-object v0

    .line 1041
    :cond_7
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_e

    .line 1042
    const-string v0, "notification_sound"

    return-object v0

    .line 1043
    :cond_e
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_15

    .line 1044
    const-string v0, "alarm_alert"

    return-object v0

    .line 1046
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist getUriFromCursor(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 600
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 601
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 600
    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 602
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->canonicalizeOrElse(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist getValidRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 639
    new-instance v0, Landroid/media/RingtoneManager;

    invoke-direct {v0, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 641
    .local v0, "rm":Landroid/media/RingtoneManager;
    invoke-direct {v0}, Landroid/media/RingtoneManager;->getInternalRingtones()Landroid/database/Cursor;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    .line 643
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_17

    .line 644
    invoke-direct {v0}, Landroid/media/RingtoneManager;->getMediaRingtones()Landroid/database/Cursor;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    .line 647
    :cond_17
    return-object v1
.end method

.method private static greylist-max-o getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 651
    if-eqz p1, :cond_11

    .line 652
    const/4 v0, 0x0

    .line 654
    .local v0, "uri":Landroid/net/Uri;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 655
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getUriFromCursor(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    .line 657
    :cond_d
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 659
    return-object v0

    .line 661
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist hasHapticChannels(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .line 1206
    invoke-static {p0, p1}, Landroid/media/AudioManager;->hasHapticChannels(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public static whitelist hasHapticChannels(Landroid/net/Uri;)Z
    .registers 2
    .param p0, "ringtoneUri"    # Landroid/net/Uri;

    .line 1195
    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/media/AudioManager;->hasHapticChannels(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isDefault(Landroid/net/Uri;)Z
    .registers 3
    .param p0, "ringtoneUri"    # Landroid/net/Uri;

    .line 1075
    invoke-static {p0}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private static greylist-max-o isExternalRingtoneUri(Landroid/net/Uri;)Z
    .registers 2
    .param p0, "uri"    # Landroid/net/Uri;

    .line 950
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->isRingtoneUriInStorage(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method private static greylist-max-o isInternalRingtoneUri(Landroid/net/Uri;)Z
    .registers 2
    .param p0, "uri"    # Landroid/net/Uri;

    .line 946
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->isRingtoneUriInStorage(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method private static greylist-max-o isRingtoneUriInStorage(Landroid/net/Uri;Landroid/net/Uri;)Z
    .registers 5
    .param p0, "ringtone"    # Landroid/net/Uri;
    .param p1, "storage"    # Landroid/net/Uri;

    .line 954
    invoke-static {p0}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 955
    .local v0, "uriWithoutUserId":Landroid/net/Uri;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_14

    .line 956
    :cond_8
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 955
    :goto_14
    return v1
.end method

.method private static blacklist muteHapticChannelForVibration(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .line 1309
    invoke-static {p1}, Landroid/media/Utils;->getVibrationUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 1311
    .local v0, "vibrationUri":Landroid/net/Uri;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1312
    return v1

    .line 1315
    :cond_8
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "synchronized"

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1316
    return v1

    .line 1318
    :cond_15
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->enableRingtoneHapticsCustomization()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1319
    invoke-static {p0}, Landroid/media/Utils;->isRingtoneVibrationSettingsSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1320
    invoke-static {p1}, Landroid/media/RingtoneManager;->hasHapticChannels(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v1, 0x1

    goto :goto_2a

    :cond_29
    nop

    .line 1318
    :goto_2a
    return v1
.end method

.method public static whitelist openDefaultRingtoneUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/res/AssetFileDescriptor;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1154
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v0

    .line 1155
    .local v0, "type":I
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getCacheForType(II)Landroid/net/Uri;

    move-result-object v1

    .line 1156
    .local v1, "cacheUri":Landroid/net/Uri;
    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 1157
    .local v2, "actualUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1159
    .local v3, "resolver":Landroid/content/ContentResolver;
    const/4 v4, 0x0

    .line 1160
    .local v4, "afd":Landroid/content/res/AssetFileDescriptor;
    const-string v5, "r"

    if-eqz v1, :cond_20

    .line 1161
    invoke-virtual {v3, v1, v5}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    .line 1162
    if-eqz v4, :cond_20

    .line 1163
    return-object v4

    .line 1166
    :cond_20
    if-eqz v2, :cond_26

    .line 1167
    invoke-virtual {v3, v2, v5}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    .line 1169
    :cond_26
    return-object v4
.end method

.method private greylist-max-o query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 740
    iget-object v6, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "projection":[Ljava/lang/String;
    .end local p3    # "selection":Ljava/lang/String;
    .end local p4    # "selectionArgs":[Ljava/lang/String;
    .end local p5    # "sortOrder":Ljava/lang/String;
    .local v1, "uri":Landroid/net/Uri;
    .local v2, "projection":[Ljava/lang/String;
    .local v3, "selection":Ljava/lang/String;
    .local v4, "selectionArgs":[Ljava/lang/String;
    .local v5, "sortOrder":Ljava/lang/String;
    invoke-direct/range {v0 .. v6}, Landroid/media/RingtoneManager;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method private greylist-max-o query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/database/Cursor;
    .registers 14
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "context"    # Landroid/content/Context;

    .line 749
    iget-object v0, p0, Landroid/media/RingtoneManager;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_15

    .line 750
    iget-object v1, p0, Landroid/media/RingtoneManager;->mActivity:Landroid/app/Activity;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "projection":[Ljava/lang/String;
    .end local p3    # "selection":Ljava/lang/String;
    .end local p4    # "selectionArgs":[Ljava/lang/String;
    .end local p5    # "sortOrder":Ljava/lang/String;
    .local v2, "uri":Landroid/net/Uri;
    .local v3, "projection":[Ljava/lang/String;
    .local v4, "selection":Ljava/lang/String;
    .local v5, "selectionArgs":[Ljava/lang/String;
    .local v6, "sortOrder":Ljava/lang/String;
    invoke-virtual/range {v1 .. v6}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    .end local v6    # "sortOrder":Ljava/lang/String;
    .local v1, "uri":Landroid/net/Uri;
    .local v2, "projection":[Ljava/lang/String;
    .local v3, "selection":Ljava/lang/String;
    .local v4, "selectionArgs":[Ljava/lang/String;
    .local v5, "sortOrder":Ljava/lang/String;
    return-object p1

    .line 752
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v5    # "sortOrder":Ljava/lang/String;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "projection":[Ljava/lang/String;
    .restart local p3    # "selection":Ljava/lang/String;
    .restart local p4    # "selectionArgs":[Ljava/lang/String;
    .restart local p5    # "sortOrder":Ljava/lang/String;
    :cond_15
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "projection":[Ljava/lang/String;
    .end local p3    # "selection":Ljava/lang/String;
    .end local p4    # "selectionArgs":[Ljava/lang/String;
    .end local p5    # "sortOrder":Ljava/lang/String;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    .restart local v5    # "sortOrder":Ljava/lang/String;
    invoke-virtual {p6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public static whitelist setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "ringtoneUri"    # Landroid/net/Uri;

    .line 915
    invoke-static {p1}, Landroid/media/RingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v0

    .line 916
    .local v0, "setting":Ljava/lang/String;
    if-nez v0, :cond_7

    return-void

    .line 918
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 919
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-static {p2}, Landroid/media/RingtoneManager;->isInternalRingtoneUri(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 920
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-static {p2, v2}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p2

    .line 923
    :cond_19
    if-eqz p2, :cond_8d

    .line 924
    invoke-virtual {v1, p2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 925
    .local v2, "mimeType":Ljava/lang/String;
    const-string v3, "setActualDefaultRingtoneUri for URI:"

    const-string v4, "RingtoneManager"

    if-nez v2, :cond_40

    .line 926
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ignored: failure to find mimeType (no access from this context?)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    return-void

    .line 930
    :cond_40
    const-string v5, "audio/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8d

    const-string v5, "application/ogg"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8d

    .line 931
    const-string v5, "application/x-flac"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8d

    .line 933
    const-string v5, "video/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8d

    const-string v5, "application/mp4"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8d

    .line 934
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ignored: associated MIME type:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " is not a recognized audio or video type"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    return-void

    .line 941
    .end local v2    # "mimeType":Ljava/lang/String;
    :cond_8d
    nop

    .line 942
    if-eqz p2, :cond_95

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_96

    :cond_95
    const/4 v2, 0x0

    :goto_96
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 941
    invoke-static {v1, v0, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 943
    return-void
.end method

.method private greylist-max-o setFilterColumnsList(I)V
    .registers 4
    .param p1, "type"    # I

    .line 690
    iget-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 691
    .local v0, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 693
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_e

    .line 694
    const-string v1, "is_ringtone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 697
    :cond_e
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_17

    .line 698
    const-string v1, "is_notification"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 701
    :cond_17
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_20

    .line 702
    const-string v1, "is_alarm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 704
    :cond_20
    return-void
.end method


# virtual methods
.method public greylist-max-o addCustomExternalRingtone(Landroid/net/Uri;I)Landroid/net/Uri;
    .registers 10
    .param p1, "fileUri"    # Landroid/net/Uri;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 994
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 999
    iget-object v0, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1000
    .local v0, "mimeType":Ljava/lang/String;
    if-eqz v0, :cond_77

    .line 1001
    const-string v1, "audio/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "application/ogg"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 1008
    :cond_28
    invoke-static {p2}, Landroid/media/RingtoneManager;->getExternalDirectoryForType(I)Ljava/lang/String;

    move-result-object v1

    .line 1011
    .local v1, "subdirectory":Ljava/lang/String;
    iget-object v2, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    .line 1012
    invoke-static {v3, p1}, Landroid/media/Utils;->getFileDisplayNameFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/FileUtils;->buildValidFatFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1011
    invoke-static {v2, v1, v3, v0}, Landroid/media/Utils;->getUniqueExternalFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1016
    .local v2, "outFile":Ljava/io/File;
    iget-object v3, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 1017
    .local v3, "input":Ljava/io/InputStream;
    :try_start_46
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4b
    .catchall {:try_start_46 .. :try_end_4b} :catchall_6b

    .line 1018
    .local v4, "output":Ljava/io/OutputStream;
    :try_start_4b
    invoke-static {v3, v4}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_61

    .line 1019
    :try_start_4e
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_6b

    .end local v4    # "output":Ljava/io/OutputStream;
    if-eqz v3, :cond_56

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1022
    .end local v3    # "input":Ljava/io/InputStream;
    :cond_56
    iget-object v3, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/provider/MediaStore;->scanFile(Landroid/content/ContentResolver;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 1016
    .restart local v3    # "input":Ljava/io/InputStream;
    .restart local v4    # "output":Ljava/io/OutputStream;
    :catchall_61
    move-exception v5

    :try_start_62
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_66

    goto :goto_6a

    :catchall_66
    move-exception v6

    :try_start_67
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "mimeType":Ljava/lang/String;
    .end local v1    # "subdirectory":Ljava/lang/String;
    .end local v2    # "outFile":Ljava/io/File;
    .end local v3    # "input":Ljava/io/InputStream;
    .end local p0    # "this":Landroid/media/RingtoneManager;
    .end local p1    # "fileUri":Landroid/net/Uri;
    .end local p2    # "type":I
    :goto_6a
    throw v5
    :try_end_6b
    .catchall {:try_start_67 .. :try_end_6b} :catchall_6b

    .end local v4    # "output":Ljava/io/OutputStream;
    .restart local v0    # "mimeType":Ljava/lang/String;
    .restart local v1    # "subdirectory":Ljava/lang/String;
    .restart local v2    # "outFile":Ljava/io/File;
    .restart local v3    # "input":Ljava/io/InputStream;
    .restart local p0    # "this":Landroid/media/RingtoneManager;
    .restart local p1    # "fileUri":Landroid/net/Uri;
    .restart local p2    # "type":I
    :catchall_6b
    move-exception v4

    if-eqz v3, :cond_76

    :try_start_6e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_72

    goto :goto_76

    :catchall_72
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_76
    :goto_76
    throw v4

    .line 1002
    .end local v1    # "subdirectory":Ljava/lang/String;
    .end local v2    # "outFile":Ljava/io/File;
    .end local v3    # "input":Ljava/io/InputStream;
    :cond_77
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ringtone file must have MIME type \"audio/*\". Given file has MIME type \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 995
    .end local v0    # "mimeType":Ljava/lang/String;
    :cond_96
    new-instance v0, Ljava/io/IOException;

    const-string v1, "External storage is not mounted. Unable to install ringtones."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getCursor()Landroid/database/Cursor;
    .registers 5

    .line 435
    iget-object v0, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 436
    iget-object v0, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    return-object v0

    .line 439
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 440
    .local v0, "ringtoneCursors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/Cursor;>;"
    invoke-direct {p0}, Landroid/media/RingtoneManager;->getInternalRingtones()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    invoke-direct {p0}, Landroid/media/RingtoneManager;->getMediaRingtones()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    iget-boolean v1, p0, Landroid/media/RingtoneManager;->mIncludeParentRingtones:Z

    if-eqz v1, :cond_2f

    .line 444
    invoke-direct {p0}, Landroid/media/RingtoneManager;->getParentProfileRingtones()Landroid/database/Cursor;

    move-result-object v1

    .line 445
    .local v1, "parentRingtonesCursor":Landroid/database/Cursor;
    if-eqz v1, :cond_2f

    .line 446
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    .end local v1    # "parentRingtonesCursor":Landroid/database/Cursor;
    :cond_2f
    new-instance v1, Lcom/android/internal/database/SortCursor;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/database/Cursor;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/database/Cursor;

    const-string v3, "title_key"

    invoke-direct {v1, v2, v3}, Lcom/android/internal/database/SortCursor;-><init>([Landroid/database/Cursor;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    return-object v1
.end method

.method public whitelist getIncludeDrm()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 399
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getRingtone(I)Landroid/media/Ringtone;
    .registers 6
    .param p1, "position"    # I

    .line 479
    iget-boolean v0, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_d

    .line 480
    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 483
    :cond_d
    iget-object v0, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    .line 484
    invoke-virtual {p0, p1}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;IZ)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    .line 485
    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    return-object v0
.end method

.method public whitelist getRingtonePosition(Landroid/net/Uri;)I
    .registers 6
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .line 613
    const/4 v0, -0x1

    if-nez p1, :cond_4

    return v0

    .line 615
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 616
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 617
    :goto_b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 618
    iget-object v2, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Landroid/media/RingtoneManager;->getUriFromCursor(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v2

    .line 619
    .local v2, "uriFromCursor":Landroid/net/Uri;
    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 620
    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v0
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_21} :catch_24

    return v0

    .line 622
    .end local v2    # "uriFromCursor":Landroid/net/Uri;
    :cond_22
    goto :goto_b

    .line 625
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_23
    goto :goto_2c

    .line 623
    :catch_24
    move-exception v1

    .line 624
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, "RingtoneManager"

    const-string v3, "NumberFormatException while getting ringtone position, returning -1"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 626
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_2c
    return v0
.end method

.method public whitelist getRingtoneUri(I)Landroid/net/Uri;
    .registers 6
    .param p1, "position"    # I

    .line 498
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_18

    iget-object v1, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1
    :try_end_b
    .catch Landroid/database/StaleDataException; {:try_start_1 .. :try_end_b} :catch_19
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_b} :catch_19

    if-nez v1, :cond_e

    goto :goto_18

    .line 504
    :cond_e
    nop

    .line 506
    iget-object v0, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getUriFromCursor(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 499
    :cond_18
    :goto_18
    return-object v0

    .line 501
    :catch_19
    move-exception v1

    .line 502
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "RingtoneManager"

    const-string v3, "Unexpected Exception has been catched."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 503
    return-object v0
.end method

.method public whitelist getStopPreviousRingtone()Z
    .registers 2

    .line 377
    iget-boolean v0, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    return v0
.end method

.method public whitelist hasHapticChannels(I)Z
    .registers 4
    .param p1, "position"    # I

    .line 1180
    iget-object v0, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/AudioManager;->hasHapticChannels(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public whitelist inferStreamType()I
    .registers 2

    .line 346
    iget v0, p0, Landroid/media/RingtoneManager;->mType:I

    packed-switch v0, :pswitch_data_c

    .line 355
    :pswitch_5
    const/4 v0, 0x2

    return v0

    .line 349
    :pswitch_7
    const/4 v0, 0x4

    return v0

    .line 352
    :pswitch_9
    const/4 v0, 0x5

    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x2
        :pswitch_9
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public whitelist setIncludeDrm(Z)V
    .registers 4
    .param p1, "includeDrm"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 411
    if-eqz p1, :cond_9

    .line 412
    const-string v0, "RingtoneManager"

    const-string v1, "setIncludeDrm no longer supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_9
    return-void
.end method

.method public whitelist setStopPreviousRingtone(Z)V
    .registers 2
    .param p1, "stopPreviousRingtone"    # Z

    .line 370
    iput-boolean p1, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    .line 371
    return-void
.end method

.method public whitelist setType(I)V
    .registers 4
    .param p1, "type"    # I

    .line 330
    iget-object v0, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_a

    .line 335
    iput p1, p0, Landroid/media/RingtoneManager;->mType:I

    .line 336
    invoke-direct {p0, p1}, Landroid/media/RingtoneManager;->setFilterColumnsList(I)V

    .line 337
    return-void

    .line 331
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Setting filter columns should be done before querying for ringtones."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist stopPreviousRingtone()V
    .registers 2

    .line 384
    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_9

    .line 385
    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 387
    :cond_9
    return-void
.end method
