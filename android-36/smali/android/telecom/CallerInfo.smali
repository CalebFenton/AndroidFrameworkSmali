.class public Landroid/telecom/CallerInfo;
.super Ljava/lang/Object;
.source "CallerInfo.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "CallerInfo"

.field public static final blacklist USER_TYPE_CURRENT:J = 0x0L

.field public static final blacklist USER_TYPE_WORK:J = 0x1L

.field private static final blacklist VDBG:Z


# instance fields
.field public blacklist cachedPhoto:Landroid/graphics/drawable/Drawable;

.field public blacklist cachedPhotoIcon:Landroid/graphics/Bitmap;

.field public blacklist cnapName:Ljava/lang/String;

.field private blacklist contactDisplayPhotoUri:Landroid/net/Uri;

.field public blacklist contactExists:Z

.field private blacklist contactIdOrZero:J

.field public blacklist contactRefUri:Landroid/net/Uri;

.field public blacklist contactRingtoneUri:Landroid/net/Uri;

.field public blacklist geoDescription:Ljava/lang/String;

.field public blacklist isCachedPhotoCurrent:Z

.field public blacklist lookupKey:Ljava/lang/String;

.field private blacklist mIsEmergency:Z

.field private blacklist mIsVoiceMail:Z

.field private blacklist name:Ljava/lang/String;

.field public blacklist namePresentation:I

.field public blacklist needUpdate:Z

.field public blacklist normalizedNumber:Ljava/lang/String;

.field public greylist numberLabel:Ljava/lang/String;

.field public blacklist numberPresentation:I

.field public greylist numberType:I

.field public blacklist phoneLabel:Ljava/lang/String;

.field private blacklist phoneNumber:Ljava/lang/String;

.field public blacklist photoResource:I

.field public blacklist preferredPhoneAccountComponent:Landroid/content/ComponentName;

.field public blacklist preferredPhoneAccountId:Ljava/lang/String;

.field public blacklist shouldSendToVoicemail:Z

.field public blacklist userType:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 57
    sget-boolean v0, Landroid/telecom/Log;->VERBOSE:Z

    sput-boolean v0, Landroid/telecom/CallerInfo;->VDBG:Z

    return-void
.end method

.method public constructor greylist-max-r <init>()V
    .registers 3

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/CallerInfo;->mIsEmergency:Z

    .line 194
    iput-boolean v0, p0, Landroid/telecom/CallerInfo;->mIsVoiceMail:Z

    .line 195
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/telecom/CallerInfo;->userType:J

    .line 196
    return-void
.end method

.method static blacklist doSecondaryLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Landroid/telecom/CallerInfo;)Landroid/telecom/CallerInfo;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "previousResult"    # Landroid/telecom/CallerInfo;

    .line 496
    iget-boolean v0, p2, Landroid/telecom/CallerInfo;->contactExists:Z

    if-nez v0, :cond_22

    .line 497
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 498
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, "username":Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 500
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 502
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 501
    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 500
    invoke-static {p0, v1}, Landroid/telecom/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Landroid/telecom/CallerInfo;

    move-result-object p2

    .line 505
    .end local v0    # "username":Ljava/lang/String;
    :cond_22
    return-object p2
.end method

.method public static greylist-max-r getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Landroid/telecom/CallerInfo;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactRef"    # Landroid/net/Uri;

    .line 353
    const/4 v1, 0x0

    .line 354
    .local v1, "info":Landroid/telecom/CallerInfo;
    invoke-static {p0}, Landroid/telecom/CallerInfoAsyncQuery;->getCurrentProfileContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object v2

    .line 355
    .local v2, "cr":Landroid/content/ContentResolver;
    if-eqz v2, :cond_24

    .line 357
    nop

    .line 358
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    .end local p1    # "contactRef":Landroid/net/Uri;
    .local v3, "contactRef":Landroid/net/Uri;
    :try_start_d
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 357
    invoke-static {p0, v3, p1}, Landroid/telecom/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Landroid/telecom/CallerInfo;

    move-result-object p1
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_15} :catch_17

    move-object v1, p1

    .line 361
    goto :goto_25

    .line 359
    :catch_17
    move-exception v0

    move-object p1, v0

    .line 360
    .local p1, "re":Ljava/lang/RuntimeException;
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "CallerInfo"

    const-string v5, "Error getting caller info."

    invoke-static {v4, p1, v5, v0}, Landroid/telecom/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_25

    .line 355
    .end local v3    # "contactRef":Landroid/net/Uri;
    .local p1, "contactRef":Landroid/net/Uri;
    :cond_24
    move-object v3, p1

    .line 363
    .end local p1    # "contactRef":Landroid/net/Uri;
    .restart local v3    # "contactRef":Landroid/net/Uri;
    :goto_25
    return-object v1
.end method

.method public static blacklist getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Landroid/telecom/CallerInfo;
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactRef"    # Landroid/net/Uri;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .line 209
    new-instance v0, Landroid/telecom/CallerInfo;

    invoke-direct {v0}, Landroid/telecom/CallerInfo;-><init>()V

    .line 210
    .local v0, "info":Landroid/telecom/CallerInfo;
    const/4 v1, 0x0

    iput v1, v0, Landroid/telecom/CallerInfo;->photoResource:I

    .line 211
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/telecom/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 212
    iput v1, v0, Landroid/telecom/CallerInfo;->numberType:I

    .line 213
    iput-object v2, v0, Landroid/telecom/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 214
    iput-object v2, v0, Landroid/telecom/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 215
    iput-boolean v1, v0, Landroid/telecom/CallerInfo;->isCachedPhotoCurrent:Z

    .line 216
    iput-boolean v1, v0, Landroid/telecom/CallerInfo;->contactExists:Z

    .line 217
    const-wide/16 v3, 0x0

    iput-wide v3, v0, Landroid/telecom/CallerInfo;->userType:J

    .line 219
    sget-boolean v5, Landroid/telecom/CallerInfo;->VDBG:Z

    const-string v6, "CallerInfo"

    if-eqz v5, :cond_26

    const-string v5, "getCallerInfo() based on cursor..."

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v6, v5, v7}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    :cond_26
    if-eqz p2, :cond_17d

    .line 222
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_179

    .line 230
    const-string v5, "display_name"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 231
    .local v5, "columnIndex":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_3d

    .line 232
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Landroid/telecom/CallerInfo;->name:Ljava/lang/String;

    .line 236
    :cond_3d
    const-string/jumbo v8, "number"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 237
    if-eq v5, v7, :cond_4c

    .line 238
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Landroid/telecom/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 242
    :cond_4c
    const-string/jumbo v8, "normalized_number"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 243
    if-eq v5, v7, :cond_5b

    .line 244
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Landroid/telecom/CallerInfo;->normalizedNumber:Ljava/lang/String;

    .line 248
    :cond_5b
    const-string/jumbo v8, "label"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 249
    if-eq v5, v7, :cond_87

    .line 250
    const-string/jumbo v8, "type"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 251
    .local v8, "typeColumnIndex":I
    if-eq v8, v7, :cond_87

    .line 252
    invoke-interface {p2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, v0, Landroid/telecom/CallerInfo;->numberType:I

    .line 253
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Landroid/telecom/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 254
    iget v9, v0, Landroid/telecom/CallerInfo;->numberType:I

    iget-object v10, v0, Landroid/telecom/CallerInfo;->numberLabel:Ljava/lang/String;

    invoke-static {p0, v9, v10}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 256
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Landroid/telecom/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 261
    .end local v8    # "typeColumnIndex":I
    :cond_87
    invoke-static {p1, p2}, Landroid/telecom/CallerInfo;->getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I

    move-result v5

    .line 262
    if-eq v5, v7, :cond_c6

    .line 263
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 264
    .local v8, "contactId":J
    cmp-long v3, v8, v3

    if-eqz v3, :cond_bb

    invoke-static {v8, v9}, Landroid/provider/ContactsContract$Contacts;->isEnterpriseContactId(J)Z

    move-result v3

    if-nez v3, :cond_bb

    .line 265
    iput-wide v8, v0, Landroid/telecom/CallerInfo;->contactIdOrZero:J

    .line 266
    sget-boolean v3, Landroid/telecom/CallerInfo;->VDBG:Z

    if-eqz v3, :cond_bb

    .line 267
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==> got info.contactIdOrZero: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v10, v0, Landroid/telecom/CallerInfo;->contactIdOrZero:J

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v6, v3, v4}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    :cond_bb
    invoke-static {v8, v9}, Landroid/provider/ContactsContract$Contacts;->isEnterpriseContactId(J)Z

    move-result v3

    if-eqz v3, :cond_c5

    .line 271
    const-wide/16 v3, 0x1

    iput-wide v3, v0, Landroid/telecom/CallerInfo;->userType:J

    .line 273
    .end local v8    # "contactId":J
    :cond_c5
    goto :goto_de

    .line 275
    :cond_c6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t find contact_id column for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v6, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    :goto_de
    const-string/jumbo v3, "lookup"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 283
    .end local v5    # "columnIndex":I
    .local v3, "columnIndex":I
    if-eq v3, v7, :cond_ed

    .line 284
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/telecom/CallerInfo;->lookupKey:Ljava/lang/String;

    .line 288
    :cond_ed
    const-string/jumbo v4, "photo_uri"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 289
    if-eq v3, v7, :cond_107

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_107

    .line 290
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v0, Landroid/telecom/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    goto :goto_109

    .line 292
    :cond_107
    iput-object v2, v0, Landroid/telecom/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    .line 295
    :goto_109
    const-string/jumbo v4, "preferred_phone_account_component_name"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 296
    if-eq v3, v7, :cond_123

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_123

    .line 297
    nop

    .line 298
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, v0, Landroid/telecom/CallerInfo;->preferredPhoneAccountComponent:Landroid/content/ComponentName;

    .line 301
    :cond_123
    const-string/jumbo v4, "preferred_phone_account_id"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 302
    if-eq v3, v7, :cond_138

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_138

    .line 303
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/telecom/CallerInfo;->preferredPhoneAccountId:Ljava/lang/String;

    .line 312
    :cond_138
    const-string v4, "custom_ringtone"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 313
    if-eq v3, v7, :cond_160

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_160

    .line 314
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_155

    .line 315
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v2, v0, Landroid/telecom/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    goto :goto_162

    .line 317
    :cond_155
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Landroid/telecom/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    goto :goto_162

    .line 320
    :cond_160
    iput-object v2, v0, Landroid/telecom/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 325
    :goto_162
    const-string/jumbo v2, "send_to_voicemail"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 326
    .end local v3    # "columnIndex":I
    .local v2, "columnIndex":I
    const/4 v3, 0x1

    if-eq v2, v7, :cond_174

    .line 327
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v3, :cond_174

    move v4, v3

    goto :goto_175

    :cond_174
    move v4, v1

    :goto_175
    iput-boolean v4, v0, Landroid/telecom/CallerInfo;->shouldSendToVoicemail:Z

    .line 328
    iput-boolean v3, v0, Landroid/telecom/CallerInfo;->contactExists:Z

    .line 330
    .end local v2    # "columnIndex":I
    :cond_179
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 331
    const/4 p2, 0x0

    .line 334
    :cond_17d
    iput-boolean v1, v0, Landroid/telecom/CallerInfo;->needUpdate:Z

    .line 335
    iget-object v1, v0, Landroid/telecom/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/telecom/CallerInfo;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/telecom/CallerInfo;->name:Ljava/lang/String;

    .line 336
    iput-object p1, v0, Landroid/telecom/CallerInfo;->contactRefUri:Landroid/net/Uri;

    .line 338
    return-object v0
.end method

.method public static greylist-max-r getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/telecom/CallerInfo;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 380
    sget-boolean v0, Landroid/telecom/CallerInfo;->VDBG:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "CallerInfo"

    const-string v2, "getCallerInfo() based on number..."

    invoke-static {v1, v2, v0}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 382
    :cond_e
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 383
    .local v0, "subId":I
    invoke-static {p0, p1, v0}, Landroid/telecom/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/telecom/CallerInfo;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-r getCallerInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/telecom/CallerInfo;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "subId"    # I

    .line 402
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 403
    return-object v1

    .line 409
    :cond_8
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 410
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 411
    new-instance v1, Landroid/telecom/CallerInfo;

    invoke-direct {v1}, Landroid/telecom/CallerInfo;-><init>()V

    invoke-virtual {v1, p0}, Landroid/telecom/CallerInfo;->markAsEmergency(Landroid/content/Context;)Landroid/telecom/CallerInfo;

    move-result-object v1

    return-object v1

    .line 412
    :cond_20
    invoke-static {v1, p2, p1}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 413
    new-instance v1, Landroid/telecom/CallerInfo;

    invoke-direct {v1}, Landroid/telecom/CallerInfo;-><init>()V

    invoke-virtual {v1, p0, p2}, Landroid/telecom/CallerInfo;->markAsVoiceMail(Landroid/content/Context;I)Landroid/telecom/CallerInfo;

    move-result-object v1

    return-object v1

    .line 416
    :cond_30
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 417
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 416
    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 419
    .local v1, "contactUri":Landroid/net/Uri;
    invoke-static {p0, v1}, Landroid/telecom/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Landroid/telecom/CallerInfo;

    move-result-object v2

    .line 420
    .local v2, "info":Landroid/telecom/CallerInfo;
    invoke-static {p0, p1, v2}, Landroid/telecom/CallerInfo;->doSecondaryLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Landroid/telecom/CallerInfo;)Landroid/telecom/CallerInfo;

    move-result-object v2

    .line 424
    iget-object v3, v2, Landroid/telecom/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 425
    iput-object p1, v2, Landroid/telecom/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 428
    :cond_4c
    return-object v2
.end method

.method private static blacklist getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I
    .registers 9
    .param p0, "contactRef"    # Landroid/net/Uri;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 619
    sget-boolean v0, Landroid/telecom/CallerInfo;->VDBG:Z

    const/4 v1, 0x0

    const-string v2, "CallerInfo"

    if-eqz v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- getColumnIndexForPersonId: contactRef URI = \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 625
    :cond_25
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 626
    .local v0, "url":Ljava/lang/String;
    const/4 v3, 0x0

    .line 627
    .local v3, "columnName":Ljava/lang/String;
    const-string v4, "content://com.android.contacts/data/phones"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 630
    sget-boolean v4, Landroid/telecom/CallerInfo;->VDBG:Z

    if-eqz v4, :cond_3d

    const-string v4, "\'data/phones\' URI; using RawContacts.CONTACT_ID"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 631
    :cond_3d
    const-string v3, "contact_id"

    goto :goto_8a

    .line 632
    :cond_40
    const-string v4, "content://com.android.contacts/data"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 635
    sget-boolean v4, Landroid/telecom/CallerInfo;->VDBG:Z

    if-eqz v4, :cond_53

    const-string v4, "\'data\' URI; using Data.CONTACT_ID"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 637
    :cond_53
    const-string v3, "contact_id"

    goto :goto_8a

    .line 638
    :cond_56
    const-string v4, "content://com.android.contacts/phone_lookup"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 642
    sget-boolean v4, Landroid/telecom/CallerInfo;->VDBG:Z

    if-eqz v4, :cond_69

    const-string v4, "\'phone_lookup\' URI; using PhoneLookup._ID"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 643
    :cond_69
    const-string v3, "_id"

    goto :goto_8a

    .line 645
    :cond_6c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected prefix for contactRef \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 647
    :goto_8a
    if-eqz v3, :cond_91

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    goto :goto_92

    :cond_91
    const/4 v4, -0x1

    .line 648
    .local v4, "columnIndex":I
    :goto_92
    sget-boolean v5, Landroid/telecom/CallerInfo;->VDBG:Z

    if-eqz v5, :cond_be

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "==> Using column \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' (columnIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") for person_id lookup..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v5, v1}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 650
    :cond_be
    return v4
.end method

.method protected static blacklist getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 735
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/telecom/CallerInfo;->getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 714
    const/4 v0, 0x0

    .line 715
    .local v0, "countryIso":Ljava/lang/String;
    const-string v1, "country_detector"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    .line 717
    .local v1, "detector":Landroid/location/CountryDetector;
    const/4 v2, 0x0

    const-string v3, "CallerInfo"

    if-eqz v1, :cond_25

    .line 718
    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v4

    .line 719
    .local v4, "country":Landroid/location/Country;
    if-eqz v4, :cond_19

    .line 720
    invoke-virtual {v4}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    .line 722
    :cond_19
    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    const-string v6, "CountryDetector.detectCountry() returned null."

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v3, v5, v6, v7}, Landroid/telecom/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 725
    .end local v4    # "country":Landroid/location/Country;
    :cond_25
    :goto_25
    if-nez v0, :cond_43

    .line 726
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 727
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No CountryDetector; falling back to countryIso based on locale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 730
    :cond_43
    return-object v0
.end method

.method public static blacklist getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 678
    const-string v0, "\'"

    sget-boolean v1, Landroid/telecom/CallerInfo;->VDBG:Z

    const/4 v2, 0x0

    const-string v3, "CallerInfo"

    if-eqz v1, :cond_27

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGeoDescription(\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\')..."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v1, v4}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 680
    :cond_27
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_2f

    .line 681
    return-object v4

    .line 684
    :cond_2f
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    .line 685
    .local v1, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    invoke-static {}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getInstance()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    move-result-object v5

    .line 687
    .local v5, "geocoder":Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 688
    .local v6, "locale":Ljava/util/Locale;
    invoke-static {p0, v6}, Landroid/telecom/CallerInfo;->getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 689
    .local v7, "countryIso":Ljava/lang/String;
    const/4 v8, 0x0

    .line 691
    .local v8, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_start_46
    sget-boolean v9, Landroid/telecom/CallerInfo;->VDBG:Z

    if-eqz v9, :cond_73

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "parsing \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' for countryIso \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {v3, v9, v10}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 693
    :cond_73
    invoke-virtual {v1, p1, v7}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v9

    move-object v8, v9

    .line 694
    sget-boolean v9, Landroid/telecom/CallerInfo;->VDBG:Z

    if-eqz v9, :cond_94

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "- parsed number: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {v3, v9, v10}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_94
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_46 .. :try_end_94} :catch_95

    .line 698
    :cond_94
    goto :goto_b6

    .line 695
    :catch_95
    move-exception v9

    .line 696
    .local v9, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getGeoDescription: NumberParseException for incoming number \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 697
    invoke-static {p1}, Landroid/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v2, [Ljava/lang/Object;

    .line 696
    invoke-static {v3, v10, v11}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 700
    .end local v9    # "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    :goto_b6
    if-eqz v8, :cond_dd

    .line 701
    invoke-virtual {v5, v8, v6}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 702
    .local v4, "description":Ljava/lang/String;
    sget-boolean v9, Landroid/telecom/CallerInfo;->VDBG:Z

    if-eqz v9, :cond_dc

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "- got description: \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 703
    :cond_dc
    return-object v4

    .line 705
    .end local v4    # "description":Ljava/lang/String;
    :cond_dd
    return-object v4
.end method

.method private static blacklist normalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 569
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    goto :goto_b

    .line 572
    :cond_9
    const/4 v0, 0x0

    return-object v0

    .line 570
    :cond_b
    :goto_b
    return-object p0
.end method


# virtual methods
.method public blacklist SetContactDisplayPhotoUri(Landroid/net/Uri;)V
    .registers 2
    .param p1, "photoUri"    # Landroid/net/Uri;

    .line 481
    iput-object p1, p0, Landroid/telecom/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    .line 482
    return-void
.end method

.method public blacklist getContactDisplayPhotoUri()Landroid/net/Uri;
    .registers 2

    .line 475
    iget-object v0, p0, Landroid/telecom/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    return-object v0
.end method

.method public blacklist getContactId()J
    .registers 3

    .line 466
    iget-wide v0, p0, Landroid/telecom/CallerInfo;->contactIdOrZero:J

    return-wide v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 436
    iget-object v0, p0, Landroid/telecom/CallerInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPhoneNumber()Ljava/lang/String;
    .registers 2

    .line 454
    iget-object v0, p0, Landroid/telecom/CallerInfo;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isEmergencyNumber()Z
    .registers 2

    .line 515
    iget-boolean v0, p0, Landroid/telecom/CallerInfo;->mIsEmergency:Z

    return v0
.end method

.method public blacklist isVoiceMailNumber()Z
    .registers 2

    .line 523
    iget-boolean v0, p0, Landroid/telecom/CallerInfo;->mIsVoiceMail:Z

    return v0
.end method

.method blacklist markAsEmergency(Landroid/content/Context;)Landroid/telecom/CallerInfo;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 539
    const v0, 0x10403a3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 541
    const v0, 0x108075e

    iput v0, p0, Landroid/telecom/CallerInfo;->photoResource:I

    .line 542
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telecom/CallerInfo;->mIsEmergency:Z

    .line 543
    return-object p0
.end method

.method blacklist markAsVoiceMail(Landroid/content/Context;I)Landroid/telecom/CallerInfo;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I

    .line 548
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telecom/CallerInfo;->mIsVoiceMail:Z

    .line 551
    :try_start_3
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 552
    invoke-virtual {v0, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 553
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/CallerInfo;->phoneNumber:Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_15} :catch_16

    .line 561
    goto :goto_21

    .line 554
    :catch_16
    move-exception v0

    .line 560
    .local v0, "se":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "CallerInfo"

    const-string v3, "Cannot access VoiceMail."

    invoke-static {v2, v0, v3, v1}, Landroid/telecom/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 565
    .end local v0    # "se":Ljava/lang/SecurityException;
    :goto_21
    return-object p0
.end method

.method public blacklist setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 446
    iput-object p1, p0, Landroid/telecom/CallerInfo;->name:Ljava/lang/String;

    .line 447
    return-void
.end method

.method public blacklist setPhoneNumber(Ljava/lang/String;)V
    .registers 2
    .param p1, "number"    # Ljava/lang/String;

    .line 459
    iput-object p1, p0, Landroid/telecom/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 460
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 745
    const/4 v0, 0x0

    .line 776
    .local v0, "VERBOSE_DEBUG":Z
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 777
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " { "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 778
    iget-object v3, p0, Landroid/telecom/CallerInfo;->name:Ljava/lang/String;

    const-string/jumbo v4, "null"

    const-string/jumbo v5, "non-null"

    if-nez v3, :cond_3b

    move-object v3, v4

    goto :goto_3c

    :cond_3b
    move-object v3, v5

    :goto_3c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", phoneNumber "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 779
    iget-object v3, p0, Landroid/telecom/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-nez v3, :cond_58

    goto :goto_59

    :cond_58
    move-object v4, v5

    :goto_59
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 780
    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 781
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 776
    return-object v1
.end method

.method public blacklist updateGeoDescription(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fallbackNumber"    # Ljava/lang/String;

    .line 667
    iget-object v0, p0, Landroid/telecom/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, p2

    goto :goto_c

    :cond_a
    iget-object v0, p0, Landroid/telecom/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 668
    .local v0, "number":Ljava/lang/String;
    :goto_c
    invoke-static {p1, v0}, Landroid/telecom/CallerInfo;->getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telecom/CallerInfo;->geoDescription:Ljava/lang/String;

    .line 669
    return-void
.end method
