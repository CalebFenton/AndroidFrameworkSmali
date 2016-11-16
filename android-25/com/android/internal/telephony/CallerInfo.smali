.class public Lcom/android/internal/telephony/CallerInfo;
.super Ljava/lang/Object;
.source "CallerInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CallerInfo"

.field public static final USER_TYPE_CURRENT:J = 0x0L

.field public static final USER_TYPE_WORK:J = 0x1L

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

.field public userType:J


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
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 160
    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsEmergency:Z

    #@6
    .line 161
    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsVoiceMail:Z

    #@8
    .line 162
    const-wide/16 v0, 0x0

    #@a
    iput-wide v0, p0, Lcom/android/internal/telephony/CallerInfo;->userType:J

    #@c
    .line 158
    return-void
.end method

.method static doSecondaryLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/internal/telephony/CallerInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "previousResult"    # Lcom/android/internal/telephony/CallerInfo;

    #@0
    .prologue
    .line 387
    iget-boolean v1, p2, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 388
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    #@7
    move-result v1

    #@8
    .line 387
    if-eqz v1, :cond_0

    #@a
    .line 389
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 390
    .local v0, "username":Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 392
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    #@16
    .line 393
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    .line 392
    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@1d
    move-result-object v1

    #@1e
    .line 391
    invoke-static {p0, v1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;

    #@21
    move-result-object p2

    #@22
    .line 396
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
    .line 304
    const/4 v6, 0x0

    #@1
    .line 305
    .local v6, "info":Lcom/android/internal/telephony/CallerInfo;
    invoke-static {p0}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->getCurrentProfileContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    #@4
    move-result-object v0

    #@5
    .line 306
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    #@7
    .line 309
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
    .line 308
    invoke-static {p0, p1, v1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/internal/telephony/CallerInfo;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result-object v6

    #@14
    .line 314
    .end local v6    # "info":Lcom/android/internal/telephony/CallerInfo;
    :cond_0
    :goto_0
    return-object v6

    #@15
    .line 310
    .restart local v6    # "info":Lcom/android/internal/telephony/CallerInfo;
    :catch_0
    move-exception v7

    #@16
    .line 311
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
    .line 174
    new-instance v1, Lcom/android/internal/telephony/CallerInfo;

    #@2
    invoke-direct {v1}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    #@5
    .line 175
    .local v1, "info":Lcom/android/internal/telephony/CallerInfo;
    const/4 v5, 0x0

    #@6
    iput v5, v1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    #@8
    .line 176
    const/4 v5, 0x0

    #@9
    iput-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    #@b
    .line 177
    const/4 v5, 0x0

    #@c
    iput v5, v1, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    #@e
    .line 178
    const/4 v5, 0x0

    #@f
    iput-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    #@11
    .line 179
    const/4 v5, 0x0

    #@12
    iput-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    #@14
    .line 180
    const/4 v5, 0x0

    #@15
    iput-boolean v5, v1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    #@17
    .line 181
    const/4 v5, 0x0

    #@18
    iput-boolean v5, v1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    #@1a
    .line 182
    const-wide/16 v6, 0x0

    #@1c
    iput-wide v6, v1, Lcom/android/internal/telephony/CallerInfo;->userType:J

    #@1e
    .line 184
    sget-boolean v5, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    #@20
    if-eqz v5, :cond_0

    #@22
    const-string/jumbo v5, "CallerInfo"

    #@25
    const-string/jumbo v6, "getCallerInfo() based on cursor..."

    #@28
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 186
    :cond_0
    if-eqz p2, :cond_9

    #@2d
    .line 187
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    #@30
    move-result v5

    #@31
    if-eqz v5, :cond_8

    #@33
    .line 195
    const-string/jumbo v5, "display_name"

    #@36
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@39
    move-result v0

    #@3a
    .line 196
    .local v0, "columnIndex":I
    const/4 v5, -0x1

    #@3b
    if-eq v0, v5, :cond_1

    #@3d
    .line 197
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@40
    move-result-object v5

    #@41
    iput-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    #@43
    .line 201
    :cond_1
    const-string/jumbo v5, "number"

    #@46
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@49
    move-result v0

    #@4a
    .line 202
    const/4 v5, -0x1

    #@4b
    if-eq v0, v5, :cond_2

    #@4d
    .line 203
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@50
    move-result-object v5

    #@51
    iput-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    #@53
    .line 207
    :cond_2
    const-string/jumbo v5, "normalized_number"

    #@56
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@59
    move-result v0

    #@5a
    .line 208
    const/4 v5, -0x1

    #@5b
    if-eq v0, v5, :cond_3

    #@5d
    .line 209
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@60
    move-result-object v5

    #@61
    iput-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    #@63
    .line 213
    :cond_3
    const-string/jumbo v5, "label"

    #@66
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@69
    move-result v0

    #@6a
    .line 214
    const/4 v5, -0x1

    #@6b
    if-eq v0, v5, :cond_4

    #@6d
    .line 215
    const-string/jumbo v5, "type"

    #@70
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@73
    move-result v4

    #@74
    .line 216
    .local v4, "typeColumnIndex":I
    const/4 v5, -0x1

    #@75
    if-eq v4, v5, :cond_4

    #@77
    .line 217
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    #@7a
    move-result v5

    #@7b
    iput v5, v1, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    #@7d
    .line 218
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@80
    move-result-object v5

    #@81
    iput-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    #@83
    .line 220
    iget v5, v1, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    #@85
    iget-object v6, v1, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    #@87
    .line 219
    invoke-static {p0, v5, v6}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@8a
    move-result-object v5

    #@8b
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@8e
    move-result-object v5

    #@8f
    iput-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    #@91
    .line 226
    .end local v4    # "typeColumnIndex":I
    :cond_4
    invoke-static {p1, p2}, Lcom/android/internal/telephony/CallerInfo;->getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I

    #@94
    move-result v0

    #@95
    .line 227
    const/4 v5, -0x1

    #@96
    if-eq v0, v5, :cond_b

    #@98
    .line 228
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    #@9b
    move-result-wide v2

    #@9c
    .line 229
    .local v2, "contactId":J
    const-wide/16 v6, 0x0

    #@9e
    cmp-long v5, v2, v6

    #@a0
    if-eqz v5, :cond_5

    #@a2
    invoke-static {v2, v3}, Landroid/provider/ContactsContract$Contacts;->isEnterpriseContactId(J)Z

    #@a5
    move-result v5

    #@a6
    if-eqz v5, :cond_a

    #@a8
    .line 235
    :cond_5
    :goto_0
    invoke-static {v2, v3}, Landroid/provider/ContactsContract$Contacts;->isEnterpriseContactId(J)Z

    #@ab
    move-result v5

    #@ac
    if-eqz v5, :cond_6

    #@ae
    .line 236
    const-wide/16 v6, 0x1

    #@b0
    iput-wide v6, v1, Lcom/android/internal/telephony/CallerInfo;->userType:J

    #@b2
    .line 247
    .end local v2    # "contactId":J
    :cond_6
    :goto_1
    const-string/jumbo v5, "lookup"

    #@b5
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@b8
    move-result v0

    #@b9
    .line 248
    const/4 v5, -0x1

    #@ba
    if-eq v0, v5, :cond_7

    #@bc
    .line 249
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@bf
    move-result-object v5

    #@c0
    iput-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->lookupKey:Ljava/lang/String;

    #@c2
    .line 253
    :cond_7
    const-string/jumbo v5, "photo_uri"

    #@c5
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@c8
    move-result v0

    #@c9
    .line 254
    const/4 v5, -0x1

    #@ca
    if-eq v0, v5, :cond_c

    #@cc
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@cf
    move-result-object v5

    #@d0
    if-eqz v5, :cond_c

    #@d2
    .line 255
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@d5
    move-result-object v5

    #@d6
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@d9
    move-result-object v5

    #@da
    iput-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    #@dc
    .line 266
    :goto_2
    const-string/jumbo v5, "custom_ringtone"

    #@df
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@e2
    move-result v0

    #@e3
    .line 267
    const/4 v5, -0x1

    #@e4
    if-eq v0, v5, :cond_e

    #@e6
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@e9
    move-result-object v5

    #@ea
    if-eqz v5, :cond_e

    #@ec
    .line 268
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@ef
    move-result-object v5

    #@f0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@f3
    move-result v5

    #@f4
    if-eqz v5, :cond_d

    #@f6
    .line 269
    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #@f8
    iput-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    #@fa
    .line 279
    :goto_3
    const-string/jumbo v5, "send_to_voicemail"

    #@fd
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@100
    move-result v0

    #@101
    .line 280
    const/4 v5, -0x1

    #@102
    if-eq v0, v5, :cond_10

    #@104
    .line 281
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    #@107
    move-result v5

    #@108
    const/4 v6, 0x1

    #@109
    if-ne v5, v6, :cond_f

    #@10b
    const/4 v5, 0x1

    #@10c
    .line 280
    :goto_4
    iput-boolean v5, v1, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    #@10e
    .line 282
    const/4 v5, 0x1

    #@10f
    iput-boolean v5, v1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    #@111
    .line 284
    .end local v0    # "columnIndex":I
    :cond_8
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    #@114
    .line 285
    const/4 p2, 0x0

    #@115
    .line 288
    .end local p2    # "cursor":Landroid/database/Cursor;
    :cond_9
    const/4 v5, 0x0

    #@116
    iput-boolean v5, v1, Lcom/android/internal/telephony/CallerInfo;->needUpdate:Z

    #@118
    .line 289
    iget-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    #@11a
    invoke-static {v5}, Lcom/android/internal/telephony/CallerInfo;->normalize(Ljava/lang/String;)Ljava/lang/String;

    #@11d
    move-result-object v5

    #@11e
    iput-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    #@120
    .line 290
    iput-object p1, v1, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    #@122
    .line 292
    return-object v1

    #@123
    .line 230
    .restart local v0    # "columnIndex":I
    .restart local v2    # "contactId":J
    .restart local p2    # "cursor":Landroid/database/Cursor;
    :cond_a
    iput-wide v2, v1, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    #@125
    .line 231
    sget-boolean v5, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    #@127
    if-eqz v5, :cond_5

    #@129
    .line 232
    const-string/jumbo v5, "CallerInfo"

    #@12c
    new-instance v6, Ljava/lang/StringBuilder;

    #@12e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@131
    const-string/jumbo v7, "==> got info.contactIdOrZero: "

    #@134
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@137
    move-result-object v6

    #@138
    iget-wide v8, v1, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    #@13a
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@13d
    move-result-object v6

    #@13e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@141
    move-result-object v6

    #@142
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@145
    goto/16 :goto_0

    #@147
    .line 240
    .end local v2    # "contactId":J
    :cond_b
    const-string/jumbo v5, "CallerInfo"

    #@14a
    new-instance v6, Ljava/lang/StringBuilder;

    #@14c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@14f
    const-string/jumbo v7, "Couldn\'t find contact_id column for "

    #@152
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@155
    move-result-object v6

    #@156
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@159
    move-result-object v6

    #@15a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15d
    move-result-object v6

    #@15e
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@161
    goto/16 :goto_1

    #@163
    .line 257
    :cond_c
    const/4 v5, 0x0

    #@164
    iput-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    #@166
    goto/16 :goto_2

    #@168
    .line 271
    :cond_d
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@16b
    move-result-object v5

    #@16c
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@16f
    move-result-object v5

    #@170
    iput-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    #@172
    goto :goto_3

    #@173
    .line 274
    :cond_e
    const/4 v5, 0x0

    #@174
    iput-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    #@176
    goto :goto_3

    #@177
    .line 281
    :cond_f
    const/4 v5, 0x0

    #@178
    goto :goto_4

    #@179
    .line 280
    :cond_10
    const/4 v5, 0x0

    #@17a
    goto :goto_4
.end method

.method public static getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 328
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
    .line 330
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    #@10
    move-result v0

    #@11
    .line 331
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
    .line 347
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 348
    const/4 v2, 0x0

    #@7
    return-object v2

    #@8
    .line 354
    :cond_0
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_1

    #@e
    .line 355
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
    .line 356
    :cond_1
    invoke-static {p2, p1}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(ILjava/lang/String;)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_2

    #@1e
    .line 357
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
    .line 360
    :cond_2
    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    #@2a
    .line 361
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    .line 360
    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@31
    move-result-object v0

    #@32
    .line 363
    .local v0, "contactUri":Landroid/net/Uri;
    invoke-static {p0, v0}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;

    #@35
    move-result-object v1

    #@36
    .line 364
    .local v1, "info":Lcom/android/internal/telephony/CallerInfo;
    invoke-static {p0, p1, v1}, Lcom/android/internal/telephony/CallerInfo;->doSecondaryLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/internal/telephony/CallerInfo;

    #@39
    move-result-object v1

    #@3a
    .line 368
    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    #@3c
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3f
    move-result v2

    #@40
    if-eqz v2, :cond_3

    #@42
    .line 369
    iput-object p1, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    #@44
    .line 372
    :cond_3
    return-object v1
.end method

.method private static getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I
    .locals 6
    .param p0, "contactRef"    # Landroid/net/Uri;
    .param p1, "cursor"    # Landroid/database/Cursor;

    #@0
    .prologue
    .line 524
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
    .line 525
    const-string/jumbo v5, "\'..."

    #@1a
    .line 524
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
    .line 530
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    .line 531
    .local v2, "url":Ljava/lang/String;
    const/4 v1, 0x0

    #@2a
    .line 532
    .local v1, "columnName":Ljava/lang/String;
    const-string/jumbo v3, "content://com.android.contacts/data/phones"

    #@2d
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@30
    move-result v3

    #@31
    if-eqz v3, :cond_3

    #@33
    .line 535
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
    .line 536
    :cond_1
    const-string/jumbo v1, "contact_id"

    #@43
    .line 552
    .end local v1    # "columnName":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_8

    #@45
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@48
    move-result v0

    #@49
    .line 553
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
    .line 554
    const-string/jumbo v5, "\' (columnIndex = "

    #@63
    .line 553
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v4

    #@67
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v4

    #@6b
    .line 554
    const-string/jumbo v5, ") for person_id lookup..."

    #@6e
    .line 553
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
    .line 555
    :cond_2
    return v0

    #@7a
    .line 537
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
    .line 540
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
    .line 542
    :cond_4
    const-string/jumbo v1, "contact_id"

    #@93
    .local v1, "columnName":Ljava/lang/String;
    goto :goto_0

    #@94
    .line 543
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
    .line 547
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
    .line 548
    :cond_6
    const-string/jumbo v1, "_id"

    #@ad
    .local v1, "columnName":Ljava/lang/String;
    goto :goto_0

    #@ae
    .line 550
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
    .line 552
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
    .line 635
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
    .line 615
    const/4 v1, 0x0

    #@1
    .line 617
    .local v1, "countryIso":Ljava/lang/String;
    const-string/jumbo v3, "country_detector"

    #@4
    .line 616
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@7
    move-result-object v2

    #@8
    check-cast v2, Landroid/location/CountryDetector;

    #@a
    .line 618
    .local v2, "detector":Landroid/location/CountryDetector;
    if-eqz v2, :cond_0

    #@c
    .line 619
    invoke-virtual {v2}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    #@f
    move-result-object v0

    #@10
    .line 620
    .local v0, "country":Landroid/location/Country;
    if-eqz v0, :cond_2

    #@12
    .line 621
    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    .line 626
    .end local v0    # "country":Landroid/location/Country;
    .end local v1    # "countryIso":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    #@18
    .line 627
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    .line 628
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
    .line 631
    .end local v1    # "countryIso":Ljava/lang/String;
    :cond_1
    return-object v1

    #@37
    .line 623
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
    .line 580
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
    .line 582
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@29
    move-result v7

    #@2a
    if-eqz v7, :cond_1

    #@2c
    .line 583
    return-object v10

    #@2d
    .line 586
    :cond_1
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    #@30
    move-result-object v6

    #@31
    .line 587
    .local v6, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    invoke-static {}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getInstance()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    #@34
    move-result-object v3

    #@35
    .line 589
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
    .line 590
    .local v4, "locale":Ljava/util/Locale;
    invoke-static {p0, v4}, Lcom/android/internal/telephony/CallerInfo;->getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    #@42
    move-result-object v0

    #@43
    .line 591
    .local v0, "countryIso":Ljava/lang/String;
    const/4 v5, 0x0

    #@44
    .line 593
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
    .line 594
    const-string/jumbo v9, "\' for countryIso \'"

    #@5e
    .line 593
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v8

    #@62
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v8

    #@66
    .line 594
    const-string/jumbo v9, "\'..."

    #@69
    .line 593
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
    .line 595
    :cond_2
    invoke-virtual {v6, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@77
    move-result-object v5

    #@78
    .line 596
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
    .line 601
    .end local v5    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :cond_3
    :goto_0
    if-eqz v5, :cond_5

    #@98
    .line 602
    invoke-virtual {v3, v5, v4}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    #@9b
    move-result-object v1

    #@9c
    .line 603
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
    .line 604
    :cond_4
    return-object v1

    #@c2
    .line 597
    .end local v1    # "description":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@c3
    .line 598
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
    .line 606
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
    .line 474
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v0

    #@7
    if-lez v0, :cond_1

    #@9
    .line 475
    :cond_0
    return-object p0

    #@a
    .line 477
    :cond_1
    return-object v1
.end method


# virtual methods
.method public isEmergencyNumber()Z
    .locals 1

    #@0
    .prologue
    .line 405
    iget-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsEmergency:Z

    #@2
    return v0
.end method

.method public isVoiceMailNumber()Z
    .locals 1

    #@0
    .prologue
    .line 412
    iget-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsVoiceMail:Z

    #@2
    return v0
.end method

.method markAsEmergency(Landroid/content/Context;)Lcom/android/internal/telephony/CallerInfo;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 429
    const v0, 0x104028f

    #@3
    .line 428
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    #@9
    .line 430
    const v0, 0x1080554

    #@c
    iput v0, p0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    #@e
    .line 431
    const/4 v0, 0x1

    #@f
    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsEmergency:Z

    #@11
    .line 432
    return-object p0
.end method

.method markAsVoiceMail()Lcom/android/internal/telephony/CallerInfo;
    .locals 2

    #@0
    .prologue
    .line 447
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    #@3
    move-result v0

    #@4
    .line 448
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
    .line 453
    const/4 v2, 0x1

    #@1
    iput-boolean v2, p0, Lcom/android/internal/telephony/CallerInfo;->mIsVoiceMail:Z

    #@3
    .line 456
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag(I)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    .line 458
    .local v1, "voiceMailLabel":Ljava/lang/String;
    iput-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 470
    .end local v1    # "voiceMailLabel":Ljava/lang/String;
    :goto_0
    return-object p0

    #@e
    .line 459
    :catch_0
    move-exception v0

    #@f
    .line 465
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
    .line 645
    const/4 v0, 0x0

    #@1
    .line 676
    .local v0, "VERBOSE_DEBUG":Z
    new-instance v1, Ljava/lang/StringBuilder;

    #@3
    const/16 v2, 0x80

    #@5
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@8
    .line 677
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
    .line 678
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
    .line 679
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
    .line 680
    const-string/jumbo v2, " }"

    #@3e
    .line 676
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
    .line 678
    :cond_0
    const-string/jumbo v1, "non-null"

    #@4a
    goto :goto_0

    #@4b
    .line 679
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
    .line 571
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
    .line 572
    .local v0, "number":Ljava/lang/String;
    :goto_0
    invoke-static {p1, v0}, Lcom/android/internal/telephony/CallerInfo;->getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    iput-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    #@f
    .line 570
    return-void

    #@10
    .line 571
    .end local v0    # "number":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    #@12
    goto :goto_0
.end method
