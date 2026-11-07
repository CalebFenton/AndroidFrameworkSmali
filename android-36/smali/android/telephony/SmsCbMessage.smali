.class public final Landroid/telephony/SmsCbMessage;
.super Ljava/lang/Object;
.source "SmsCbMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SmsCbMessage$MessagePriority;,
        Landroid/telephony/SmsCbMessage$MessageFormat;,
        Landroid/telephony/SmsCbMessage$GeographicalScope;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/SmsCbMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist GEOGRAPHICAL_SCOPE_CELL_WIDE:I = 0x3

.field public static final whitelist GEOGRAPHICAL_SCOPE_CELL_WIDE_IMMEDIATE:I = 0x0

.field public static final whitelist GEOGRAPHICAL_SCOPE_LOCATION_AREA_WIDE:I = 0x2

.field public static final whitelist GEOGRAPHICAL_SCOPE_PLMN_WIDE:I = 0x1

.field public static final blacklist LOG_TAG:Ljava/lang/String; = "SMSCB"

.field public static final whitelist MAXIMUM_WAIT_TIME_NOT_SET:I = 0xff

.field public static final whitelist MESSAGE_FORMAT_3GPP:I = 0x1

.field public static final whitelist MESSAGE_FORMAT_3GPP2:I = 0x2

.field public static final whitelist MESSAGE_PRIORITY_EMERGENCY:I = 0x3

.field public static final whitelist MESSAGE_PRIORITY_INTERACTIVE:I = 0x1

.field public static final whitelist MESSAGE_PRIORITY_NORMAL:I = 0x0

.field public static final whitelist MESSAGE_PRIORITY_URGENT:I = 0x2


# instance fields
.field private final greylist-max-o mBody:Ljava/lang/String;

.field private final greylist-max-o mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

.field private final blacklist mDataCodingScheme:I

.field private final greylist-max-o mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

.field private final greylist-max-o mGeographicalScope:I

.field private final blacklist mGeometries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/CbGeoUtils$Geometry;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mLanguage:Ljava/lang/String;

.field private final greylist-max-o mLocation:Landroid/telephony/SmsCbLocation;

.field private final blacklist mMaximumWaitTimeSec:I

.field private final greylist-max-o mMessageFormat:I

.field private final greylist-max-o mPriority:I

.field private final blacklist mReceivedTimeMillis:J

.field private final greylist-max-o mSerialNumber:I

.field private final greylist-max-o mServiceCategory:I

.field private final blacklist mSlotIndex:I

.field private final blacklist mSubId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 337
    new-instance v0, Landroid/telephony/SmsCbMessage$1;

    invoke-direct {v0}, Landroid/telephony/SmsCbMessage$1;-><init>()V

    sput-object v0, Landroid/telephony/SmsCbMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IIILandroid/telephony/SmsCbLocation;ILjava/lang/String;ILjava/lang/String;ILandroid/telephony/SmsCbEtwsInfo;Landroid/telephony/SmsCbCmasInfo;ILjava/util/List;JII)V
    .registers 34
    .param p1, "messageFormat"    # I
    .param p2, "geographicalScope"    # I
    .param p3, "serialNumber"    # I
    .param p4, "location"    # Landroid/telephony/SmsCbLocation;
    .param p5, "serviceCategory"    # I
    .param p6, "language"    # Ljava/lang/String;
    .param p7, "dataCodingScheme"    # I
    .param p8, "body"    # Ljava/lang/String;
    .param p9, "priority"    # I
    .param p10, "etwsWarningInfo"    # Landroid/telephony/SmsCbEtwsInfo;
    .param p11, "cmasWarningInfo"    # Landroid/telephony/SmsCbCmasInfo;
    .param p12, "maximumWaitTimeSec"    # I
    .param p14, "receivedTimeMillis"    # J
    .param p16, "slotIndex"    # I
    .param p17, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Landroid/telephony/SmsCbLocation;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Landroid/telephony/SmsCbEtwsInfo;",
            "Landroid/telephony/SmsCbCmasInfo;",
            "I",
            "Ljava/util/List<",
            "Landroid/telephony/CbGeoUtils$Geometry;",
            ">;JII)V"
        }
    .end annotation

    .line 240
    .local p13, "geometries":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CbGeoUtils$Geometry;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 241
    move/from16 v1, p1

    iput v1, v0, Landroid/telephony/SmsCbMessage;->mMessageFormat:I

    .line 242
    move/from16 v2, p2

    iput v2, v0, Landroid/telephony/SmsCbMessage;->mGeographicalScope:I

    .line 243
    move/from16 v3, p3

    iput v3, v0, Landroid/telephony/SmsCbMessage;->mSerialNumber:I

    .line 244
    move-object/from16 v4, p4

    iput-object v4, v0, Landroid/telephony/SmsCbMessage;->mLocation:Landroid/telephony/SmsCbLocation;

    .line 245
    move/from16 v5, p5

    iput v5, v0, Landroid/telephony/SmsCbMessage;->mServiceCategory:I

    .line 246
    move-object/from16 v6, p6

    iput-object v6, v0, Landroid/telephony/SmsCbMessage;->mLanguage:Ljava/lang/String;

    .line 247
    move/from16 v7, p7

    iput v7, v0, Landroid/telephony/SmsCbMessage;->mDataCodingScheme:I

    .line 248
    move-object/from16 v8, p8

    iput-object v8, v0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    .line 249
    move/from16 v9, p9

    iput v9, v0, Landroid/telephony/SmsCbMessage;->mPriority:I

    .line 250
    move-object/from16 v10, p10

    iput-object v10, v0, Landroid/telephony/SmsCbMessage;->mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

    .line 251
    move-object/from16 v11, p11

    iput-object v11, v0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    .line 252
    move-wide/from16 v12, p14

    iput-wide v12, v0, Landroid/telephony/SmsCbMessage;->mReceivedTimeMillis:J

    .line 253
    move-object/from16 v14, p13

    iput-object v14, v0, Landroid/telephony/SmsCbMessage;->mGeometries:Ljava/util/List;

    .line 254
    move/from16 v15, p12

    iput v15, v0, Landroid/telephony/SmsCbMessage;->mMaximumWaitTimeSec:I

    .line 255
    move/from16 v1, p16

    iput v1, v0, Landroid/telephony/SmsCbMessage;->mSlotIndex:I

    .line 256
    move/from16 v1, p17

    iput v1, v0, Landroid/telephony/SmsCbMessage;->mSubId:I

    .line 257
    return-void
.end method

.method public constructor blacklist <init>(IIILandroid/telephony/SmsCbLocation;ILjava/lang/String;Ljava/lang/String;ILandroid/telephony/SmsCbEtwsInfo;Landroid/telephony/SmsCbCmasInfo;II)V
    .registers 31
    .param p1, "messageFormat"    # I
    .param p2, "geographicalScope"    # I
    .param p3, "serialNumber"    # I
    .param p4, "location"    # Landroid/telephony/SmsCbLocation;
    .param p5, "serviceCategory"    # I
    .param p6, "language"    # Ljava/lang/String;
    .param p7, "body"    # Ljava/lang/String;
    .param p8, "priority"    # I
    .param p9, "etwsWarningInfo"    # Landroid/telephony/SmsCbEtwsInfo;
    .param p10, "cmasWarningInfo"    # Landroid/telephony/SmsCbCmasInfo;
    .param p11, "slotIndex"    # I
    .param p12, "subId"    # I

    .line 225
    nop

    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 225
    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v16, p11

    move/from16 v17, p12

    invoke-direct/range {v0 .. v17}, Landroid/telephony/SmsCbMessage;-><init>(IIILandroid/telephony/SmsCbLocation;ILjava/lang/String;ILjava/lang/String;ILandroid/telephony/SmsCbEtwsInfo;Landroid/telephony/SmsCbCmasInfo;ILjava/util/List;JII)V

    .line 228
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbMessage;->mMessageFormat:I

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbMessage;->mGeographicalScope:I

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbMessage;->mSerialNumber:I

    .line 267
    new-instance v0, Landroid/telephony/SmsCbLocation;

    invoke-direct {v0, p1}, Landroid/telephony/SmsCbLocation;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/telephony/SmsCbMessage;->mLocation:Landroid/telephony/SmsCbLocation;

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbMessage;->mServiceCategory:I

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SmsCbMessage;->mLanguage:Ljava/lang/String;

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbMessage;->mDataCodingScheme:I

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbMessage;->mPriority:I

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 274
    .local v0, "type":I
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_80

    .line 288
    :pswitch_42
    iput-object v1, p0, Landroid/telephony/SmsCbMessage;->mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

    .line 289
    iput-object v1, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    goto :goto_5b

    .line 277
    :pswitch_47
    new-instance v2, Landroid/telephony/SmsCbEtwsInfo;

    invoke-direct {v2, p1}, Landroid/telephony/SmsCbEtwsInfo;-><init>(Landroid/os/Parcel;)V

    iput-object v2, p0, Landroid/telephony/SmsCbMessage;->mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

    .line 278
    iput-object v1, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    .line 279
    goto :goto_5b

    .line 283
    :pswitch_51
    iput-object v1, p0, Landroid/telephony/SmsCbMessage;->mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

    .line 284
    new-instance v2, Landroid/telephony/SmsCbCmasInfo;

    invoke-direct {v2, p1}, Landroid/telephony/SmsCbCmasInfo;-><init>(Landroid/os/Parcel;)V

    iput-object v2, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    .line 285
    nop

    .line 291
    :goto_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/telephony/SmsCbMessage;->mReceivedTimeMillis:J

    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 293
    .local v2, "geoStr":Ljava/lang/String;
    if-eqz v2, :cond_6b

    invoke-static {v2}, Landroid/telephony/CbGeoUtils;->parseGeometriesFromString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    :cond_6b
    iput-object v1, p0, Landroid/telephony/SmsCbMessage;->mGeometries:Ljava/util/List;

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SmsCbMessage;->mMaximumWaitTimeSec:I

    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SmsCbMessage;->mSlotIndex:I

    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SmsCbMessage;->mSubId:I

    .line 297
    return-void

    :pswitch_data_80
    .packed-switch 0x43
        :pswitch_51
        :pswitch_42
        :pswitch_47
    .end packed-switch
.end method

.method public static whitelist createFromCursor(Landroid/database/Cursor;)Landroid/telephony/SmsCbMessage;
    .registers 40
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 631
    move-object/from16 v0, p0

    .line 632
    const-string v1, "geo_scope"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 631
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 633
    .local v4, "geoScope":I
    const-string/jumbo v1, "serial_number"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 634
    .local v5, "serialNum":I
    const-string/jumbo v1, "service_category"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 635
    .local v7, "category":I
    nop

    .line 636
    const-string/jumbo v1, "language"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 635
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 637
    .local v8, "language":Ljava/lang/String;
    const-string v1, "body"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 638
    .local v10, "body":Ljava/lang/String;
    const-string v1, "format"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 639
    .local v3, "format":I
    const-string/jumbo v1, "priority"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 640
    .local v11, "priority":I
    const-string/jumbo v1, "slot_index"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 641
    .local v18, "slotIndex":I
    const-string/jumbo v1, "sub_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 644
    .local v19, "subId":I
    const-string/jumbo v1, "plmn"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 645
    .local v1, "plmnColumn":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_78

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_78

    .line 646
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .local v6, "plmn":Ljava/lang/String;
    goto :goto_79

    .line 648
    .end local v6    # "plmn":Ljava/lang/String;
    :cond_78
    const/4 v6, 0x0

    .line 652
    .restart local v6    # "plmn":Ljava/lang/String;
    :goto_79
    const-string/jumbo v9, "lac"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 653
    .local v9, "lacColumn":I
    if-eq v9, v2, :cond_8d

    invoke-interface {v0, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_8d

    .line 654
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .local v12, "lac":I
    goto :goto_8e

    .line 656
    .end local v12    # "lac":I
    :cond_8d
    const/4 v12, -0x1

    .line 660
    .restart local v12    # "lac":I
    :goto_8e
    const-string v13, "cid"

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 661
    .local v13, "cidColumn":I
    if-eq v13, v2, :cond_a1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-nez v14, :cond_a1

    .line 662
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .local v14, "cid":I
    goto :goto_a2

    .line 664
    .end local v14    # "cid":I
    :cond_a1
    const/4 v14, -0x1

    .line 667
    .restart local v14    # "cid":I
    :goto_a2
    new-instance v15, Landroid/telephony/SmsCbLocation;

    invoke-direct {v15, v6, v12, v14}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;II)V

    .line 670
    .local v15, "location":Landroid/telephony/SmsCbLocation;
    const-string v2, "etws_warning_type"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 671
    .local v2, "etwsWarningTypeColumn":I
    move/from16 v20, v1

    .end local v1    # "plmnColumn":I
    .local v20, "plmnColumn":I
    const-string v1, "etws_is_primary"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 672
    .local v1, "etwsIsPrimaryColumn":I
    move/from16 v17, v3

    const/4 v3, -0x1

    .end local v3    # "format":I
    .local v17, "format":I
    if-eq v2, v3, :cond_e3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-nez v16, :cond_e3

    if-eq v1, v3, :cond_e3

    .line 673
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_e3

    .line 674
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 675
    .local v22, "warningType":I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_d4

    const/4 v3, 0x1

    goto :goto_d5

    :cond_d4
    const/4 v3, 0x0

    :goto_d5
    move/from16 v25, v3

    .line 676
    .local v25, "isPrimary":Z
    new-instance v21, Landroid/telephony/SmsCbEtwsInfo;

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v21 .. v26}, Landroid/telephony/SmsCbEtwsInfo;-><init>(IZZZ[B)V

    .line 677
    .end local v22    # "warningType":I
    .end local v25    # "isPrimary":Z
    .local v21, "etwsInfo":Landroid/telephony/SmsCbEtwsInfo;
    goto :goto_e5

    .line 678
    .end local v21    # "etwsInfo":Landroid/telephony/SmsCbEtwsInfo;
    :cond_e3
    const/16 v21, 0x0

    .line 681
    .restart local v21    # "etwsInfo":Landroid/telephony/SmsCbEtwsInfo;
    :goto_e5
    const/4 v3, 0x0

    .line 682
    .local v3, "cmasInfo":Landroid/telephony/SmsCbCmasInfo;
    move/from16 v22, v1

    .end local v1    # "etwsIsPrimaryColumn":I
    .local v22, "etwsIsPrimaryColumn":I
    const-string v1, "cmas_message_class"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 683
    .local v1, "cmasMessageClassColumn":I
    move/from16 v23, v2

    const/4 v2, -0x1

    .end local v2    # "etwsWarningTypeColumn":I
    .local v23, "etwsWarningTypeColumn":I
    if-eq v1, v2, :cond_18c

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-nez v16, :cond_18c

    .line 684
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 687
    .local v25, "messageClass":I
    const-string v2, "cmas_category"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 688
    .local v2, "cmasCategoryColumn":I
    move/from16 v31, v1

    const/4 v1, -0x1

    .end local v1    # "cmasMessageClassColumn":I
    .local v31, "cmasMessageClassColumn":I
    if-eq v2, v1, :cond_115

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_115

    .line 689
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move/from16 v26, v1

    .local v1, "cmasCategory":I
    goto :goto_118

    .line 691
    .end local v1    # "cmasCategory":I
    :cond_115
    const/4 v1, -0x1

    move/from16 v26, v1

    .line 695
    .local v26, "cmasCategory":I
    :goto_118
    const-string v1, "cmas_response_type"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 696
    .local v1, "cmasResponseTypeColumn":I
    move/from16 v32, v2

    const/4 v2, -0x1

    .end local v2    # "cmasCategoryColumn":I
    .local v32, "cmasCategoryColumn":I
    if-eq v1, v2, :cond_130

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_130

    .line 697
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move/from16 v27, v2

    .local v2, "responseType":I
    goto :goto_133

    .line 699
    .end local v2    # "responseType":I
    :cond_130
    const/4 v2, -0x1

    move/from16 v27, v2

    .line 703
    .local v27, "responseType":I
    :goto_133
    const-string v2, "cmas_severity"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 704
    .local v2, "cmasSeverityColumn":I
    move/from16 v33, v1

    const/4 v1, -0x1

    .end local v1    # "cmasResponseTypeColumn":I
    .local v33, "cmasResponseTypeColumn":I
    if-eq v2, v1, :cond_14b

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_14b

    .line 705
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move/from16 v28, v1

    .local v1, "severity":I
    goto :goto_14e

    .line 707
    .end local v1    # "severity":I
    :cond_14b
    const/4 v1, -0x1

    move/from16 v28, v1

    .line 711
    .local v28, "severity":I
    :goto_14e
    const-string v1, "cmas_urgency"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 712
    .local v1, "cmasUrgencyColumn":I
    move/from16 v34, v2

    const/4 v2, -0x1

    .end local v2    # "cmasSeverityColumn":I
    .local v34, "cmasSeverityColumn":I
    if-eq v1, v2, :cond_166

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_166

    .line 713
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move/from16 v29, v2

    .local v2, "urgency":I
    goto :goto_169

    .line 715
    .end local v2    # "urgency":I
    :cond_166
    const/4 v2, -0x1

    move/from16 v29, v2

    .line 719
    .local v29, "urgency":I
    :goto_169
    const-string v2, "cmas_certainty"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 720
    .local v2, "cmasCertaintyColumn":I
    move/from16 v35, v1

    const/4 v1, -0x1

    .end local v1    # "cmasUrgencyColumn":I
    .local v35, "cmasUrgencyColumn":I
    if-eq v2, v1, :cond_181

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_181

    .line 721
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move/from16 v30, v1

    .local v1, "certainty":I
    goto :goto_184

    .line 723
    .end local v1    # "certainty":I
    :cond_181
    const/4 v1, -0x1

    move/from16 v30, v1

    .line 726
    .local v30, "certainty":I
    :goto_184
    new-instance v24, Landroid/telephony/SmsCbCmasInfo;

    invoke-direct/range {v24 .. v30}, Landroid/telephony/SmsCbCmasInfo;-><init>(IIIIII)V

    move-object/from16 v3, v24

    goto :goto_18e

    .line 683
    .end local v2    # "cmasCertaintyColumn":I
    .end local v25    # "messageClass":I
    .end local v26    # "cmasCategory":I
    .end local v27    # "responseType":I
    .end local v28    # "severity":I
    .end local v29    # "urgency":I
    .end local v30    # "certainty":I
    .end local v31    # "cmasMessageClassColumn":I
    .end local v32    # "cmasCategoryColumn":I
    .end local v33    # "cmasResponseTypeColumn":I
    .end local v34    # "cmasSeverityColumn":I
    .end local v35    # "cmasUrgencyColumn":I
    .local v1, "cmasMessageClassColumn":I
    :cond_18c
    move/from16 v31, v1

    .line 730
    .end local v1    # "cmasMessageClassColumn":I
    .restart local v31    # "cmasMessageClassColumn":I
    :goto_18e
    const-string v1, "geometries"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 732
    .local v1, "geoStr":Ljava/lang/String;
    if-eqz v1, :cond_19f

    invoke-static {v1}, Landroid/telephony/CbGeoUtils;->parseGeometriesFromString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto :goto_1a0

    :cond_19f
    const/4 v2, 0x0

    .line 734
    .local v2, "geometries":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CbGeoUtils$Geometry;>;"
    :goto_1a0
    nop

    .line 735
    move-object/from16 v24, v1

    .end local v1    # "geoStr":Ljava/lang/String;
    .local v24, "geoStr":Ljava/lang/String;
    const-string/jumbo v1, "received_time"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 734
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 737
    .local v25, "receivedTimeMillis":J
    nop

    .line 738
    const-string/jumbo v1, "maximum_wait_time"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 737
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 740
    .local v1, "maximumWaitTimeSec":I
    move-object/from16 v16, v6

    move-object v6, v15

    move-object v15, v2

    .end local v2    # "geometries":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CbGeoUtils$Geometry;>;"
    .local v6, "location":Landroid/telephony/SmsCbLocation;
    .local v15, "geometries":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CbGeoUtils$Geometry;>;"
    .local v16, "plmn":Ljava/lang/String;
    new-instance v2, Landroid/telephony/SmsCbMessage;

    move/from16 v27, v9

    .end local v9    # "lacColumn":I
    .local v27, "lacColumn":I
    const/4 v9, 0x0

    move/from16 v36, v14

    move v14, v1

    move v1, v13

    move-object v13, v3

    move/from16 v3, v17

    move-wide/from16 v37, v25

    move/from16 v26, v12

    move-object/from16 v25, v16

    move-object/from16 v12, v21

    move-wide/from16 v16, v37

    move/from16 v21, v36

    .end local v17    # "format":I
    .local v1, "cidColumn":I
    .local v3, "format":I
    .local v12, "etwsInfo":Landroid/telephony/SmsCbEtwsInfo;
    .local v13, "cmasInfo":Landroid/telephony/SmsCbCmasInfo;
    .local v14, "maximumWaitTimeSec":I
    .local v16, "receivedTimeMillis":J
    .local v21, "cid":I
    .local v25, "plmn":Ljava/lang/String;
    .local v26, "lac":I
    invoke-direct/range {v2 .. v19}, Landroid/telephony/SmsCbMessage;-><init>(IIILandroid/telephony/SmsCbLocation;ILjava/lang/String;ILjava/lang/String;ILandroid/telephony/SmsCbEtwsInfo;Landroid/telephony/SmsCbCmasInfo;ILjava/util/List;JII)V

    move-object v9, v2

    move-wide/from16 v36, v16

    move/from16 v17, v3

    move-wide/from16 v2, v36

    .end local v3    # "format":I
    .end local v16    # "receivedTimeMillis":J
    .local v2, "receivedTimeMillis":J
    .restart local v17    # "format":I
    return-object v9
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 565
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCmasWarningInfo()Landroid/telephony/SmsCbCmasInfo;
    .registers 2

    .line 516
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    return-object v0
.end method

.method public whitelist getContentValues()Landroid/content/ContentValues;
    .registers 7

    .line 573
    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 574
    .local v0, "cv":Landroid/content/ContentValues;
    iget v1, p0, Landroid/telephony/SmsCbMessage;->mSlotIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "slot_index"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 575
    iget v1, p0, Landroid/telephony/SmsCbMessage;->mSubId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "sub_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 576
    iget v1, p0, Landroid/telephony/SmsCbMessage;->mGeographicalScope:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "geo_scope"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 577
    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mLocation:Landroid/telephony/SmsCbLocation;

    invoke-virtual {v1}, Landroid/telephony/SmsCbLocation;->getPlmn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3e

    .line 578
    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mLocation:Landroid/telephony/SmsCbLocation;

    invoke-virtual {v1}, Landroid/telephony/SmsCbLocation;->getPlmn()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "plmn"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    :cond_3e
    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mLocation:Landroid/telephony/SmsCbLocation;

    invoke-virtual {v1}, Landroid/telephony/SmsCbLocation;->getLac()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_57

    .line 581
    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mLocation:Landroid/telephony/SmsCbLocation;

    invoke-virtual {v1}, Landroid/telephony/SmsCbLocation;->getLac()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v3, "lac"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 583
    :cond_57
    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mLocation:Landroid/telephony/SmsCbLocation;

    invoke-virtual {v1}, Landroid/telephony/SmsCbLocation;->getCid()I

    move-result v1

    if-eq v1, v2, :cond_6e

    .line 584
    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mLocation:Landroid/telephony/SmsCbLocation;

    invoke-virtual {v1}, Landroid/telephony/SmsCbLocation;->getCid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 586
    :cond_6e
    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getSerialNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "serial_number"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 587
    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getServiceCategory()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "service_category"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 588
    const-string/jumbo v1, "language"

    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getDataCodingScheme()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "dcs"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 590
    const-string v1, "body"

    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getMessageFormat()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "format"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 592
    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getMessagePriority()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "priority"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 594
    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getEtwsWarningInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object v1

    .line 595
    .local v1, "etwsInfo":Landroid/telephony/SmsCbEtwsInfo;
    if-eqz v1, :cond_e5

    .line 596
    invoke-virtual {v1}, Landroid/telephony/SmsCbEtwsInfo;->getWarningType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "etws_warning_type"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 597
    invoke-virtual {v1}, Landroid/telephony/SmsCbEtwsInfo;->isPrimary()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "etws_is_primary"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 600
    :cond_e5
    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getCmasWarningInfo()Landroid/telephony/SmsCbCmasInfo;

    move-result-object v2

    .line 601
    .local v2, "cmasInfo":Landroid/telephony/SmsCbCmasInfo;
    if-eqz v2, :cond_139

    .line 602
    invoke-virtual {v2}, Landroid/telephony/SmsCbCmasInfo;->getMessageClass()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "cmas_message_class"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 603
    invoke-virtual {v2}, Landroid/telephony/SmsCbCmasInfo;->getCategory()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "cmas_category"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 604
    invoke-virtual {v2}, Landroid/telephony/SmsCbCmasInfo;->getResponseType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "cmas_response_type"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 605
    invoke-virtual {v2}, Landroid/telephony/SmsCbCmasInfo;->getSeverity()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "cmas_severity"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 606
    invoke-virtual {v2}, Landroid/telephony/SmsCbCmasInfo;->getUrgency()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "cmas_urgency"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 607
    invoke-virtual {v2}, Landroid/telephony/SmsCbCmasInfo;->getCertainty()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "cmas_certainty"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 610
    :cond_139
    iget-wide v3, p0, Landroid/telephony/SmsCbMessage;->mReceivedTimeMillis:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string/jumbo v4, "received_time"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 612
    iget-object v3, p0, Landroid/telephony/SmsCbMessage;->mGeometries:Ljava/util/List;

    const-string v4, "geometries"

    if-eqz v3, :cond_155

    .line 613
    iget-object v3, p0, Landroid/telephony/SmsCbMessage;->mGeometries:Ljava/util/List;

    invoke-static {v3}, Landroid/telephony/CbGeoUtils;->encodeGeometriesToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15c

    .line 615
    :cond_155
    const/4 v3, 0x0

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    :goto_15c
    iget v3, p0, Landroid/telephony/SmsCbMessage;->mMaximumWaitTimeSec:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "maximum_wait_time"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 620
    return-object v0
.end method

.method public whitelist getDataCodingScheme()I
    .registers 2

    .line 412
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mDataCodingScheme:I

    return v0
.end method

.method public whitelist getEtwsWarningInfo()Landroid/telephony/SmsCbEtwsInfo;
    .registers 2

    .line 501
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

    return-object v0
.end method

.method public whitelist getGeographicalScope()I
    .registers 2

    .line 356
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mGeographicalScope:I

    return v0
.end method

.method public whitelist getGeometries()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/CbGeoUtils$Geometry;",
            ">;"
        }
    .end annotation

    .line 434
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mGeometries:Ljava/util/List;

    if-nez v0, :cond_a

    .line 435
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 437
    :cond_a
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mGeometries:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getLanguageCode()Ljava/lang/String;
    .registers 2

    .line 403
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLocation()Landroid/telephony/SmsCbLocation;
    .registers 2

    .line 381
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mLocation:Landroid/telephony/SmsCbLocation;

    return-object v0
.end method

.method public whitelist getMaximumWaitingDuration()I
    .registers 2

    .line 445
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mMaximumWaitTimeSec:I

    return v0
.end method

.method public whitelist getMessageBody()Ljava/lang/String;
    .registers 2

    .line 422
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMessageFormat()I
    .registers 2

    .line 477
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mMessageFormat:I

    return v0
.end method

.method public whitelist getMessagePriority()I
    .registers 2

    .line 487
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mPriority:I

    return v0
.end method

.method public whitelist getReceivedTime()J
    .registers 3

    .line 453
    iget-wide v0, p0, Landroid/telephony/SmsCbMessage;->mReceivedTimeMillis:J

    return-wide v0
.end method

.method public whitelist getSerialNumber()I
    .registers 2

    .line 367
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mSerialNumber:I

    return v0
.end method

.method public whitelist getServiceCategory()I
    .registers 2

    .line 393
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mServiceCategory:I

    return v0
.end method

.method public whitelist getSlotIndex()I
    .registers 2

    .line 461
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mSlotIndex:I

    return v0
.end method

.method public whitelist getSubscriptionId()I
    .registers 2

    .line 469
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mSubId:I

    return v0
.end method

.method public whitelist isCmasMessage()Z
    .registers 2

    .line 540
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist isEmergencyMessage()Z
    .registers 3

    .line 524
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mPriority:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist isEtwsMessage()Z
    .registers 2

    .line 532
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist needGeoFencingCheck()Z
    .registers 2

    .line 749
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mMaximumWaitTimeSec:I

    if-lez v0, :cond_12

    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mGeometries:Ljava/util/List;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mGeometries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmsCbMessage{geographicalScope="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbMessage;->mGeographicalScope:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serialNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbMessage;->mSerialNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mLocation:Landroid/telephony/SmsCbLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serviceCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbMessage;->mServiceCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbMessage;->mPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 549
    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

    const-string v2, ", "

    const-string v3, ""

    if-eqz v1, :cond_79

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/telephony/SmsCbMessage;->mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

    invoke-virtual {v4}, Landroid/telephony/SmsCbEtwsInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7a

    :cond_79
    move-object v1, v3

    :goto_7a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 550
    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    if-eqz v1, :cond_99

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    invoke-virtual {v2}, Landroid/telephony/SmsCbCmasInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_99
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maximumWaitingTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbMessage;->mMaximumWaitTimeSec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", received time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/telephony/SmsCbMessage;->mReceivedTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", slotIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbMessage;->mSlotIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", geo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 554
    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mGeometries:Ljava/util/List;

    if-eqz v1, :cond_d2

    .line 555
    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mGeometries:Ljava/util/List;

    invoke-static {v1}, Landroid/telephony/CbGeoUtils;->encodeGeometriesToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    goto :goto_d5

    :cond_d2
    const-string/jumbo v1, "null"

    :goto_d5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 545
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 307
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mMessageFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mGeographicalScope:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mSerialNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mLocation:Landroid/telephony/SmsCbLocation;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/SmsCbLocation;->writeToParcel(Landroid/os/Parcel;I)V

    .line 311
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mServiceCategory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mLanguage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 313
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mDataCodingScheme:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 315
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

    if-eqz v0, :cond_3c

    .line 318
    const/16 v0, 0x45

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/SmsCbEtwsInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_50

    .line 320
    :cond_3c
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    if-eqz v0, :cond_4b

    .line 322
    const/16 v0, 0x43

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/SmsCbCmasInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_50

    .line 326
    :cond_4b
    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    :goto_50
    iget-wide v0, p0, Landroid/telephony/SmsCbMessage;->mReceivedTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 329
    nop

    .line 330
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mGeometries:Ljava/util/List;

    if-eqz v0, :cond_61

    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mGeometries:Ljava/util/List;

    invoke-static {v0}, Landroid/telephony/CbGeoUtils;->encodeGeometriesToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_62

    :cond_61
    const/4 v0, 0x0

    .line 329
    :goto_62
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 331
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mMaximumWaitTimeSec:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mSlotIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mSubId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    return-void
.end method
