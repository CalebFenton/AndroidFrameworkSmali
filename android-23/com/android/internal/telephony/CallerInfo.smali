.class public Lcom/android/internal/telephony/CallerInfo;
.super Ljava/lang/Object;
.source "CallerInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CallerInfo"

.field private static final VDBG:Z


# instance fields
.field public cachedPhoto:Landroid/graphics/drawable/Drawable;

.field public cachedPhotoIcon:Landroid/graphics/Bitmap;

.field public cnapName:Ljava/lang/String;

.field public contactDisplayPhotoUri:Landroid/net/Uri;

.field public contactExists:Z

.field public contactIdOrZero:J

.field public contactRefUri:Landroid/net/Uri;

.field public contactRingtoneUri:Landroid/net/Uri;

.field public geoDescription:Ljava/lang/String;

.field public isCachedPhotoCurrent:Z

.field public lookupKey:Ljava/lang/String;

.field private mIsEmergency:Z

.field private mIsVoiceMail:Z

.field public name:Ljava/lang/String;

.field public namePresentation:I

.field public needUpdate:Z

.field public normalizedNumber:Ljava/lang/String;

.field public numberLabel:Ljava/lang/String;

.field public numberPresentation:I

.field public numberType:I

.field public phoneLabel:Ljava/lang/String;

.field public phoneNumber:Ljava/lang/String;

.field public photoResource:I

.field public shouldSendToVoicemail:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 54
    const-string/jumbo v0, "CallerInfo"

    #@3
    const/4 v1, 0x2

    #@4
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    sput-boolean v0, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    #@a
    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 155
    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsEmergency:Z

    #@6
    .line 156
    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsVoiceMail:Z

    #@8
    .line 153
    return-void
.end method

.method static doSecondaryLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/internal/telephony/CallerInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "previousResult"    # Lcom/android/internal/telephony/CallerInfo;

    #@0
    .prologue
    .line 369
    iget-boolean v1, p2, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 370
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    #@7
    move-result v1

    #@8
    .line 369
    if-eqz v1, :cond_0

    #@a
    .line 371
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 372
    .local v0, "username":Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 374
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    #@16
    .line 375
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    .line 374
    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@1d
    move-result-object v1

    #@1e
    .line 373
    invoke-static {p0, v1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;

    #@21
    move-result-object p2

    #@22
    .line 378
    .end local v0    # "username":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method public static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactRef"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 286
    const/4 v6, 0x0

    #@1
    .line 287
    .local v6, "info":Lcom/android/internal/telephony/CallerInfo;
    invoke-static {p0}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->getCurrentProfileContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    #@4
    move-result-object v0

    #@5
    .line 288
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    #@7
    .line 291
    const/4 v2, 0x0

    #@8
    const/4 v3, 0x0

    #@9
    const/4 v4, 0x0

    #@a
    const/4 v5, 0x0

    #@b
    move-object v1, p1

    #@c
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@f
    move-result-object v1

    #@10
    .line 290
    invoke-static {p0, p1, v1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/internal/telephony/CallerInfo;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result-object v6

    #@14
    .line 296
    .end local v6    # "info":Lcom/android/internal/telephony/CallerInfo;
    :cond_0
    :goto_0
    return-object v6

    #@15
    .line 292
    .restart local v6    # "info":Lcom/android/internal/telephony/CallerInfo;
    :catch_0
    move-exception v7

    #@16
    .line 293
    .local v7, "re":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "CallerInfo"

    #@19
    const-string/jumbo v2, "Error getting caller info."

    #@1c
    invoke-static {v1, v2, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f
    goto :goto_0
.end method

.method public static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/internal/telephony/CallerInfo;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactRef"    # Landroid/net/Uri;
    .param p2, "cursor"    # Landroid/database/Cursor;

    #@0
    .prologue
    .line 168
    new-instance v1, Lcom/android/internal/telephony/CallerInfo;

    #@2
    invoke-direct {v1}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    #@5
    .line 169
    .local v1, "info":Lcom/android/internal/telephony/CallerInfo;
    const/4 v5, 0x0

    #@6
    iput v5, v1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    #@8
    .line 170
    const/4 v5, 0x0

    #@9
    iput-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    #@b
    .line 171
    const/4 v5, 0x0

    #@c
    iput v5, v1, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    #@e
    .line 172
    const/4 v5, 0x0

    #@f
    iput-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    #@11
    .line 173
    const/4 v5, 0x0

    #@12
    iput-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    #@14
    .line 174
    const/4 v5, 0x0

    #@15
    iput-boolean v5, v1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    #@17
    .line 175
    const/4 v5, 0x0

    #@18
    iput-boolean v5, v1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    #@1a
    .line 177
    sget-boolean v5, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    #@1c
    if-eqz v5, :cond_0

    #@1e
    const-string/jumbo v5, "CallerInfo"

    #@21
    const-string/jumbo v6, "getCallerInfo() based on cursor..."

    #@24
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 179
    :cond_0
    if-eqz p2, :cond_8

    #@29
    .line 180
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    #@2c
    move-result v5

    #@2d
    if-eqz v5, :cond_7

    #@2f
    .line 188
    const-string/jumbo v5, "display_name"

    #@32
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@35
    move-result v0

    #@36
    .line 189
    .local v0, "columnIndex":I
    const/4 v5, -0x1

    #@37
    if-eq v0, v5, :cond_1

    #@39
    .line 190
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@3c
    move-result-object v5

    #@3d
    iput-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    #@3f
    .line 194
    :cond_1
    const-string/jumbo v5, "number"

    #@42
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@45
    move-result v0

    #@46
    .line 195
    const/4 v5, -0x1

    #@47
    if-eq v0, v5, :cond_2

    #@49
    .line 196
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@4c
    move-result-object v5

    #@4d
    iput-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    #@4f
    .line 200
    :cond_2
    const-string/jumbo v5, "normalized_number"

    #@52
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@55
    move-result v0

    #@56
    .line 201
    const/4 v5, -0x1

    #@57
    if-eq v0, v5, :cond_3

    #@59
    .line 202
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@5c
    move-result-object v5

    #@5d
    iput-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    #@5f
    .line 206
    :cond_3
    const-string/jumbo v5, "label"

    #@62
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@65
    move-result v0

    #@66
    .line 207
    const/4 v5, -0x1

    #@67
    if-eq v0, v5, :cond_4

    #@69
    .line 208
    const-string/jumbo v5, "type"

    #@6c
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@6f
    move-result v4

    #@70
    .line 209
    .local v4, "typeColumnIndex":I
    const/4 v5, -0x1

    #@71
    if-eq v4, v5, :cond_4

    #@73
    .line 210
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    #@76
    move-result v5

    #@77
    iput v5, v1, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    #@79
    .line 211
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@7c
    move-result-object v5

    #@7d
    iput-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    #@7f
    .line 213
    iget v5, v1, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    #@81
    iget-object v6, v1, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    #@83
    .line 212
    invoke-static {p0, v5, v6}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@86
    move-result-object v5

    #@87
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@8a
    move-result-object v5

    #@8b
    iput-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    #@8d
    .line 219
    .end local v4    # "typeColumnIndex":I
    :cond_4
    invoke-static {p1, p2}, Lcom/android/internal/telephony/CallerInfo;->getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I

    #@90
    move-result v0

    #@91
    .line 220
    const/4 v5, -0x1

    #@92
    if-eq v0, v5, :cond_a

    #@94
    .line 221
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    #@97
    move-result-wide v2

    #@98
    .line 222
    .local v2, "contactId":J
    const-wide/16 v6, 0x0

    #@9a
    cmp-long v5, v2, v6

    #@9c
    if-eqz v5, :cond_5

    #@9e
    invoke-static {v2, v3}, Landroid/provider/ContactsContract$Contacts;->isEnterpriseContactId(J)Z

    #@a1
    move-result v5

    #@a2
    if-eqz v5, :cond_9

    #@a4
    .line 237
    .end local v2    # "contactId":J
    :cond_5
    :goto_0
    const-string/jumbo v5, "lookup"

    #@a7
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@aa
    move-result v0

    #@ab
    .line 238
    const/4 v5, -0x1

    #@ac
    if-eq v0, v5, :cond_6

    #@ae
    .line 239
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@b1
    move-result-object v5

    #@b2
    iput-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->lookupKey:Ljava/lang/String;

    #@b4
    .line 243
    :cond_6
    const-string/jumbo v5, "photo_uri"

    #@b7
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@ba
    move-result v0

    #@bb
    .line 244
    const/4 v5, -0x1

    #@bc
    if-eq v0, v5, :cond_b

    #@be
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@c1
    move-result-object v5

    #@c2
    if-eqz v5, :cond_b

    #@c4
    .line 245
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@c7
    move-result-object v5

    #@c8
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@cb
    move-result-object v5

    #@cc
    iput-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    #@ce
    .line 252
    :goto_1
    const-string/jumbo v5, "custom_ringtone"

    #@d1
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@d4
    move-result v0

    #@d5
    .line 253
    const/4 v5, -0x1

    #@d6
    if-eq v0, v5, :cond_c

    #@d8
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@db
    move-result-object v5

    #@dc
    if-eqz v5, :cond_c

    #@de
    .line 254
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@e1
    move-result-object v5

    #@e2
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@e5
    move-result-object v5

    #@e6
    iput-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    #@e8
    .line 261
    :goto_2
    const-string/jumbo v5, "send_to_voicemail"

    #@eb
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@ee
    move-result v0

    #@ef
    .line 262
    const/4 v5, -0x1

    #@f0
    if-eq v0, v5, :cond_e

    #@f2
    .line 263
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    #@f5
    move-result v5

    #@f6
    const/4 v6, 0x1

    #@f7
    if-ne v5, v6, :cond_d

    #@f9
    const/4 v5, 0x1

    #@fa
    .line 262
    :goto_3
    iput-boolean v5, v1, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    #@fc
    .line 264
    const/4 v5, 0x1

    #@fd
    iput-boolean v5, v1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    #@ff
    .line 266
    .end local v0    # "columnIndex":I
    :cond_7
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    #@102
    .line 267
    const/4 p2, 0x0

    #@103
    .line 270
    .end local p2    # "cursor":Landroid/database/Cursor;
    :cond_8
    const/4 v5, 0x0

    #@104
    iput-boolean v5, v1, Lcom/android/internal/telephony/CallerInfo;->needUpdate:Z

    #@106
    .line 271
    iget-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    #@108
    invoke-static {v5}, Lcom/android/internal/telephony/CallerInfo;->normalize(Ljava/lang/String;)Ljava/lang/String;

    #@10b
    move-result-object v5

    #@10c
    iput-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    #@10e
    .line 272
    iput-object p1, v1, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    #@110
    .line 274
    return-object v1

    #@111
    .line 223
    .restart local v0    # "columnIndex":I
    .restart local v2    # "contactId":J
    .restart local p2    # "cursor":Landroid/database/Cursor;
    :cond_9
    iput-wide v2, v1, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    #@113
    .line 224
    sget-boolean v5, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    #@115
    if-eqz v5, :cond_5

    #@117
    .line 225
    const-string/jumbo v5, "CallerInfo"

    #@11a
    new-instance v6, Ljava/lang/StringBuilder;

    #@11c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@11f
    const-string/jumbo v7, "==> got info.contactIdOrZero: "

    #@122
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v6

    #@126
    iget-wide v8, v1, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    #@128
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@12b
    move-result-object v6

    #@12c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12f
    move-result-object v6

    #@130
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@133
    goto/16 :goto_0

    #@135
    .line 230
    .end local v2    # "contactId":J
    :cond_a
    const-string/jumbo v5, "CallerInfo"

    #@138
    new-instance v6, Ljava/lang/StringBuilder;

    #@13a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@13d
    const-string/jumbo v7, "Couldn\'t find contact_id column for "

    #@140
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@143
    move-result-object v6

    #@144
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@147
    move-result-object v6

    #@148
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14b
    move-result-object v6

    #@14c
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@14f
    goto/16 :goto_0

    #@151
    .line 247
    :cond_b
    const/4 v5, 0x0

    #@152
    iput-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    #@154
    goto/16 :goto_1

    #@156
    .line 256
    :cond_c
    const/4 v5, 0x0

    #@157
    iput-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    #@159
    goto :goto_2

    #@15a
    .line 263
    :cond_d
    const/4 v5, 0x0

    #@15b
    goto :goto_3

    #@15c
    .line 262
    :cond_e
    const/4 v5, 0x0

    #@15d
    goto :goto_3
.end method

.method public static getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 310
    sget-boolean v1, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    const-string/jumbo v1, "CallerInfo"

    #@7
    const-string/jumbo v2, "getCallerInfo() based on number..."

    #@a
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 312
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    #@10
    move-result v0

    #@11
    .line 313
    .local v0, "subId":I
    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/internal/telephony/CallerInfo;

    #@14
    move-result-object v1

    #@15
    return-object v1
.end method

.method public static getCallerInfo(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/internal/telephony/CallerInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "subId"    # I

    #@0
    .prologue
    .line 329
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 330
    const/4 v2, 0x0

    #@7
    return-object v2

    #@8
    .line 336
    :cond_0
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_1

    #@e
    .line 337
    new-instance v2, Lcom/android/internal/telephony/CallerInfo;

    #@10
    invoke-direct {v2}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    #@13
    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/CallerInfo;->markAsEmergency(Landroid/content/Context;)Lcom/android/internal/telephony/CallerInfo;

    #@16
    move-result-object v2

    #@17
    return-object v2

    #@18
    .line 338
    :cond_1
    invoke-static {p2, p1}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(ILjava/lang/String;)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_2

    #@1e
    .line 339
    new-instance v2, Lcom/android/internal/telephony/CallerInfo;

    #@20
    invoke-direct {v2}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    #@23
    invoke-virtual {v2}, Lcom/android/internal/telephony/CallerInfo;->markAsVoiceMail()Lcom/android/internal/telephony/CallerInfo;

    #@26
    move-result-object v2

    #@27
    return-object v2

    #@28
    .line 342
    :cond_2
    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    #@2a
    .line 343
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    .line 342
    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@31
    move-result-object v0

    #@32
    .line 345
    .local v0, "contactUri":Landroid/net/Uri;
    invoke-static {p0, v0}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;

    #@35
    move-result-object v1

    #@36
    .line 346
    .local v1, "info":Lcom/android/internal/telephony/CallerInfo;
    invoke-static {p0, p1, v1}, Lcom/android/internal/telephony/CallerInfo;->doSecondaryLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/internal/telephony/CallerInfo;

    #@39
    move-result-object v1

    #@3a
    .line 350
    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    #@3c
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3f
    move-result v2

    #@40
    if-eqz v2, :cond_3

    #@42
    .line 351
    iput-object p1, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    #@44
    .line 354
    :cond_3
    return-object v1
.end method

.method private static getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I
    .locals 6
    .param p0, "contactRef"    # Landroid/net/Uri;
    .param p1, "cursor"    # Landroid/database/Cursor;

    #@0
    .prologue
    .line 506
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    #@2
    if-eqz v3, :cond_0

    #@4
    const-string/jumbo v3, "CallerInfo"

    #@7
    new-instance v4, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v5, "- getColumnIndexForPersonId: contactRef URI = \'"

    #@f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v4

    #@13
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v4

    #@17
    .line 507
    const-string/jumbo v5, "\'..."

    #@1a
    .line 506
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 512
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    .line 513
    .local v2, "url":Ljava/lang/String;
    const/4 v1, 0x0

    #@2a
    .line 514
    .local v1, "columnName":Ljava/lang/String;
    const-string/jumbo v3, "content://com.android.contacts/data/phones"

    #@2d
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@30
    move-result v3

    #@31
    if-eqz v3, :cond_3

    #@33
    .line 517
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    #@35
    if-eqz v3, :cond_1

    #@37
    const-string/jumbo v3, "CallerInfo"

    #@3a
    const-string/jumbo v4, "\'data/phones\' URI; using RawContacts.CONTACT_ID"

    #@3d
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    .line 518
    :cond_1
    const-string/jumbo v1, "contact_id"

    #@43
    .line 534
    .end local v1    # "columnName":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_8

    #@45
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@48
    move-result v0

    #@49
    .line 535
    .local v0, "columnIndex":I
    :goto_1
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    #@4b
    if-eqz v3, :cond_2

    #@4d
    const-string/jumbo v3, "CallerInfo"

    #@50
    new-instance v4, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v5, "==> Using column \'"

    #@58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v4

    #@5c
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v4

    #@60
    .line 536
    const-string/jumbo v5, "\' (columnIndex = "

    #@63
    .line 535
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v4

    #@67
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v4

    #@6b
    .line 536
    const-string/jumbo v5, ") for person_id lookup..."

    #@6e
    .line 535
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v4

    #@72
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v4

    #@76
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@79
    .line 537
    :cond_2
    return v0

    #@7a
    .line 519
    .end local v0    # "columnIndex":I
    .restart local v1    # "columnName":Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, "content://com.android.contacts/data"

    #@7d
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@80
    move-result v3

    #@81
    if-eqz v3, :cond_5

    #@83
    .line 522
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    #@85
    if-eqz v3, :cond_4

    #@87
    const-string/jumbo v3, "CallerInfo"

    #@8a
    const-string/jumbo v4, "\'data\' URI; using Data.CONTACT_ID"

    #@8d
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@90
    .line 524
    :cond_4
    const-string/jumbo v1, "contact_id"

    #@93
    .local v1, "columnName":Ljava/lang/String;
    goto :goto_0

    #@94
    .line 525
    .local v1, "columnName":Ljava/lang/String;
    :cond_5
    const-string/jumbo v3, "content://com.android.contacts/phone_lookup"

    #@97
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@9a
    move-result v3

    #@9b
    if-eqz v3, :cond_7

    #@9d
    .line 529
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    #@9f
    if-eqz v3, :cond_6

    #@a1
    const-string/jumbo v3, "CallerInfo"

    #@a4
    const-string/jumbo v4, "\'phone_lookup\' URI; using PhoneLookup._ID"

    #@a7
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@aa
    .line 530
    :cond_6
    const-string/jumbo v1, "_id"

    #@ad
    .local v1, "columnName":Ljava/lang/String;
    goto :goto_0

    #@ae
    .line 532
    .local v1, "columnName":Ljava/lang/String;
    :cond_7
    const-string/jumbo v3, "CallerInfo"

    #@b1
    new-instance v4, Ljava/lang/StringBuilder;

    #@b3
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b6
    const-string/jumbo v5, "Unexpected prefix for contactRef \'"

    #@b9
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v4

    #@bd
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v4

    #@c1
    const-string/jumbo v5, "\'"

    #@c4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v4

    #@c8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cb
    move-result-object v4

    #@cc
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@cf
    goto/16 :goto_0

    #@d1
    .line 534
    .end local v1    # "columnName":Ljava/lang/String;
    :cond_8
    const/4 v0, -0x1

    #@d2
    .restart local v0    # "columnIndex":I
    goto/16 :goto_1
.end method

.method protected static getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 617
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0}, Lcom/android/internal/telephony/CallerInfo;->getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private static getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 597
    const/4 v1, 0x0

    #@1
    .line 599
    .local v1, "countryIso":Ljava/lang/String;
    const-string/jumbo v3, "country_detector"

    #@4
    .line 598
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@7
    move-result-object v2

    #@8
    check-cast v2, Landroid/location/CountryDetector;

    #@a
    .line 600
    .local v2, "detector":Landroid/location/CountryDetector;
    if-eqz v2, :cond_0

    #@c
    .line 601
    invoke-virtual {v2}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    #@f
    move-result-object v0

    #@10
    .line 602
    .local v0, "country":Landroid/location/Country;
    if-eqz v0, :cond_2

    #@12
    .line 603
    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    .line 608
    .end local v0    # "country":Landroid/location/Country;
    .end local v1    # "countryIso":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    #@18
    .line 609
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    .line 610
    .local v1, "countryIso":Ljava/lang/String;
    const-string/jumbo v3, "CallerInfo"

    #@1f
    new-instance v4, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v5, "No CountryDetector; falling back to countryIso based on locale: "

    #@27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 613
    .end local v1    # "countryIso":Ljava/lang/String;
    :cond_1
    return-object v1

    #@37
    .line 605
    .restart local v0    # "country":Landroid/location/Country;
    .local v1, "countryIso":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "CallerInfo"

    #@3a
    const-string/jumbo v4, "CountryDetector.detectCountry() returned null."

    #@3d
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    goto :goto_0
.end method

.method private static getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 562
    sget-boolean v7, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    #@3
    if-eqz v7, :cond_0

    #@5
    const-string/jumbo v7, "CallerInfo"

    #@8
    new-instance v8, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v9, "getGeoDescription(\'"

    #@10
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v8

    #@14
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v8

    #@18
    const-string/jumbo v9, "\')..."

    #@1b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v8

    #@1f
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v8

    #@23
    invoke-static {v7, v8}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 564
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@29
    move-result v7

    #@2a
    if-eqz v7, :cond_1

    #@2c
    .line 565
    return-object v10

    #@2d
    .line 568
    :cond_1
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    #@30
    move-result-object v6

    #@31
    .line 569
    .local v6, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    invoke-static {}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getInstance()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    #@34
    move-result-object v3

    #@35
    .line 571
    .local v3, "geocoder":Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@38
    move-result-object v7

    #@39
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@3c
    move-result-object v7

    #@3d
    iget-object v4, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@3f
    .line 572
    .local v4, "locale":Ljava/util/Locale;
    invoke-static {p0, v4}, Lcom/android/internal/telephony/CallerInfo;->getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    #@42
    move-result-object v0

    #@43
    .line 573
    .local v0, "countryIso":Ljava/lang/String;
    const/4 v5, 0x0

    #@44
    .line 575
    .local v5, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_start_0
    sget-boolean v7, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    #@46
    if-eqz v7, :cond_2

    #@48
    const-string/jumbo v7, "CallerInfo"

    #@4b
    new-instance v8, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v9, "parsing \'"

    #@53
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v8

    #@57
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v8

    #@5b
    .line 576
    const-string/jumbo v9, "\' for countryIso \'"

    #@5e
    .line 575
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v8

    #@62
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v8

    #@66
    .line 576
    const-string/jumbo v9, "\'..."

    #@69
    .line 575
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v8

    #@6d
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v8

    #@71
    invoke-static {v7, v8}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@74
    .line 577
    :cond_2
    invoke-virtual {v6, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@77
    move-result-object v5

    #@78
    .line 578
    .local v5, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    sget-boolean v7, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    #@7a
    if-eqz v7, :cond_3

    #@7c
    const-string/jumbo v7, "CallerInfo"

    #@7f
    new-instance v8, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const-string/jumbo v9, "- parsed number: "

    #@87
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v8

    #@8b
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v8

    #@8f
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v8

    #@93
    invoke-static {v7, v8}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@96
    .line 583
    .end local v5    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :cond_3
    :goto_0
    if-eqz v5, :cond_5

    #@98
    .line 584
    invoke-virtual {v3, v5, v4}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    #@9b
    move-result-object v1

    #@9c
    .line 585
    .local v1, "description":Ljava/lang/String;
    sget-boolean v7, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    #@9e
    if-eqz v7, :cond_4

    #@a0
    const-string/jumbo v7, "CallerInfo"

    #@a3
    new-instance v8, Ljava/lang/StringBuilder;

    #@a5
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@a8
    const-string/jumbo v9, "- got description: \'"

    #@ab
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v8

    #@af
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v8

    #@b3
    const-string/jumbo v9, "\'"

    #@b6
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v8

    #@ba
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bd
    move-result-object v8

    #@be
    invoke-static {v7, v8}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@c1
    .line 586
    :cond_4
    return-object v1

    #@c2
    .line 579
    .end local v1    # "description":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@c3
    .line 580
    .local v2, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    const-string/jumbo v7, "CallerInfo"

    #@c6
    new-instance v8, Ljava/lang/StringBuilder;

    #@c8
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@cb
    const-string/jumbo v9, "getGeoDescription: NumberParseException for incoming number \'"

    #@ce
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v8

    #@d2
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v8

    #@d6
    const-string/jumbo v9, "\'"

    #@d9
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v8

    #@dd
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e0
    move-result-object v8

    #@e1
    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e4
    goto :goto_0

    #@e5
    .line 588
    .end local v2    # "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    :cond_5
    return-object v10
.end method

.method private static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 456
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v0

    #@7
    if-lez v0, :cond_1

    #@9
    .line 457
    :cond_0
    return-object p0

    #@a
    .line 459
    :cond_1
    return-object v1
.end method


# virtual methods
.method public isEmergencyNumber()Z
    .locals 1

    #@0
    .prologue
    .line 387
    iget-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsEmergency:Z

    #@2
    return v0
.end method

.method public isVoiceMailNumber()Z
    .locals 1

    #@0
    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsVoiceMail:Z

    #@2
    return v0
.end method

.method markAsEmergency(Landroid/content/Context;)Lcom/android/internal/telephony/CallerInfo;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 411
    const v0, 0x1040261

    #@3
    .line 410
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    #@9
    .line 412
    const v0, 0x1080537

    #@c
    iput v0, p0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    #@e
    .line 413
    const/4 v0, 0x1

    #@f
    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsEmergency:Z

    #@11
    .line 414
    return-object p0
.end method

.method markAsVoiceMail()Lcom/android/internal/telephony/CallerInfo;
    .locals 2

    #@0
    .prologue
    .line 429
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    #@3
    move-result v0

    #@4
    .line 430
    .local v0, "subId":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CallerInfo;->markAsVoiceMail(I)Lcom/android/internal/telephony/CallerInfo;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method

.method markAsVoiceMail(I)Lcom/android/internal/telephony/CallerInfo;
    .locals 4
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 435
    const/4 v2, 0x1

    #@1
    iput-boolean v2, p0, Lcom/android/internal/telephony/CallerInfo;->mIsVoiceMail:Z

    #@3
    .line 438
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag(I)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    .line 440
    .local v1, "voiceMailLabel":Ljava/lang/String;
    iput-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 452
    .end local v1    # "voiceMailLabel":Ljava/lang/String;
    :goto_0
    return-object p0

    #@e
    .line 441
    :catch_0
    move-exception v0

    #@f
    .line 447
    .local v0, "se":Ljava/lang/SecurityException;
    const-string/jumbo v2, "CallerInfo"

    #@12
    const-string/jumbo v3, "Cannot access VoiceMail."

    #@15
    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@18
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 626
    const/4 v0, 0x0

    #@1
    .line 656
    .local v0, "VERBOSE_DEBUG":Z
    new-instance v1, Ljava/lang/StringBuilder;

    #@3
    const/16 v2, 0x80

    #@5
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@8
    .line 657
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    const-string/jumbo v2, " { "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    .line 658
    const-string/jumbo v2, "name "

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    iget-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    #@20
    if-nez v1, :cond_0

    #@22
    const-string/jumbo v1, "null"

    #@25
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    .line 659
    const-string/jumbo v2, ", phoneNumber "

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    iget-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    #@32
    if-nez v1, :cond_1

    #@34
    const-string/jumbo v1, "null"

    #@37
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    .line 660
    const-string/jumbo v2, " }"

    #@3e
    .line 656
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    return-object v1

    #@47
    .line 658
    :cond_0
    const-string/jumbo v1, "non-null"

    #@4a
    goto :goto_0

    #@4b
    .line 659
    :cond_1
    const-string/jumbo v1, "non-null"

    #@4e
    goto :goto_1
.end method

.method public updateGeoDescription(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fallbackNumber"    # Ljava/lang/String;

    #@0
    .prologue
    .line 553
    iget-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    #@2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    move-object v0, p2

    #@9
    .line 554
    .local v0, "number":Ljava/lang/String;
    :goto_0
    invoke-static {p1, v0}, Lcom/android/internal/telephony/CallerInfo;->getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    iput-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    #@f
    .line 552
    return-void

    #@10
    .line 553
    .end local v0    # "number":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    #@12
    .restart local v0    # "number":Ljava/lang/String;
    goto :goto_0
.end method
