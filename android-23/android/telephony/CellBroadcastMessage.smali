.class public Landroid/telephony/CellBroadcastMessage;
.super Ljava/lang/Object;
.source "CellBroadcastMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CellBroadcastMessage$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/CellBroadcastMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final SMS_CB_MESSAGE_EXTRA:Ljava/lang/String; = "com.android.cellbroadcastreceiver.SMS_CB_MESSAGE"


# instance fields
.field private final mDeliveryTime:J

.field private mIsRead:Z

.field private final mSmsCbMessage:Landroid/telephony/SmsCbMessage;

.field private mSubId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 111
    new-instance v0, Landroid/telephony/CellBroadcastMessage$1;

    #@2
    invoke-direct {v0}, Landroid/telephony/CellBroadcastMessage$1;-><init>()V

    #@5
    .line 110
    sput-object v0, Landroid/telephony/CellBroadcastMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 40
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 57
    iput v0, p0, Landroid/telephony/CellBroadcastMessage;->mSubId:I

    #@6
    .line 90
    new-instance v1, Landroid/telephony/SmsCbMessage;

    #@8
    invoke-direct {v1, p1}, Landroid/telephony/SmsCbMessage;-><init>(Landroid/os/Parcel;)V

    #@b
    iput-object v1, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    #@d
    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@10
    move-result-wide v2

    #@11
    iput-wide v2, p0, Landroid/telephony/CellBroadcastMessage;->mDeliveryTime:J

    #@13
    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_0

    #@19
    const/4 v0, 0x1

    #@1a
    :cond_0
    iput-boolean v0, p0, Landroid/telephony/CellBroadcastMessage;->mIsRead:Z

    #@1c
    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v0

    #@20
    iput v0, p0, Landroid/telephony/CellBroadcastMessage;->mSubId:I

    #@22
    .line 89
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CellBroadcastMessage;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/telephony/CellBroadcastMessage;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/telephony/SmsCbMessage;)V
    .locals 3
    .param p1, "message"    # Landroid/telephony/SmsCbMessage;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 57
    iput v2, p0, Landroid/telephony/CellBroadcastMessage;->mSubId:I

    #@6
    .line 78
    iput-object p1, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    #@8
    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@b
    move-result-wide v0

    #@c
    iput-wide v0, p0, Landroid/telephony/CellBroadcastMessage;->mDeliveryTime:J

    #@e
    .line 80
    iput-boolean v2, p0, Landroid/telephony/CellBroadcastMessage;->mIsRead:Z

    #@10
    .line 77
    return-void
.end method

.method private constructor <init>(Landroid/telephony/SmsCbMessage;JZ)V
    .locals 2
    .param p1, "message"    # Landroid/telephony/SmsCbMessage;
    .param p2, "deliveryTime"    # J
    .param p4, "isRead"    # Z

    #@0
    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/telephony/CellBroadcastMessage;->mSubId:I

    #@6
    .line 84
    iput-object p1, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    #@8
    .line 85
    iput-wide p2, p0, Landroid/telephony/CellBroadcastMessage;->mDeliveryTime:J

    #@a
    .line 86
    iput-boolean p4, p0, Landroid/telephony/CellBroadcastMessage;->mIsRead:Z

    #@c
    .line 83
    return-void
.end method

.method public static createFromCursor(Landroid/database/Cursor;)Landroid/telephony/CellBroadcastMessage;
    .locals 43
    .param p0, "cursor"    # Landroid/database/Cursor;

    #@0
    .prologue
    .line 131
    const-string/jumbo v23, "geo_scope"

    #@3
    move-object/from16 v0, p0

    #@5
    move-object/from16 v1, v23

    #@7
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@a
    move-result v23

    #@b
    .line 130
    move-object/from16 v0, p0

    #@d
    move/from16 v1, v23

    #@f
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    #@12
    move-result v15

    #@13
    .line 133
    .local v15, "geoScope":I
    const-string/jumbo v23, "serial_number"

    #@16
    move-object/from16 v0, p0

    #@18
    move-object/from16 v1, v23

    #@1a
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@1d
    move-result v23

    #@1e
    .line 132
    move-object/from16 v0, p0

    #@20
    move/from16 v1, v23

    #@22
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    #@25
    move-result v16

    #@26
    .line 135
    .local v16, "serialNum":I
    const-string/jumbo v23, "service_category"

    #@29
    move-object/from16 v0, p0

    #@2b
    move-object/from16 v1, v23

    #@2d
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@30
    move-result v23

    #@31
    .line 134
    move-object/from16 v0, p0

    #@33
    move/from16 v1, v23

    #@35
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    #@38
    move-result v18

    #@39
    .line 137
    .local v18, "category":I
    const-string/jumbo v23, "language"

    #@3c
    move-object/from16 v0, p0

    #@3e
    move-object/from16 v1, v23

    #@40
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@43
    move-result v23

    #@44
    .line 136
    move-object/from16 v0, p0

    #@46
    move/from16 v1, v23

    #@48
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@4b
    move-result-object v19

    #@4c
    .line 139
    .local v19, "language":Ljava/lang/String;
    const-string/jumbo v23, "body"

    #@4f
    move-object/from16 v0, p0

    #@51
    move-object/from16 v1, v23

    #@53
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@56
    move-result v23

    #@57
    .line 138
    move-object/from16 v0, p0

    #@59
    move/from16 v1, v23

    #@5b
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@5e
    move-result-object v20

    #@5f
    .line 141
    .local v20, "body":Ljava/lang/String;
    const-string/jumbo v23, "format"

    #@62
    move-object/from16 v0, p0

    #@64
    move-object/from16 v1, v23

    #@66
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@69
    move-result v23

    #@6a
    .line 140
    move-object/from16 v0, p0

    #@6c
    move/from16 v1, v23

    #@6e
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    #@71
    move-result v14

    #@72
    .line 143
    .local v14, "format":I
    const-string/jumbo v23, "priority"

    #@75
    move-object/from16 v0, p0

    #@77
    move-object/from16 v1, v23

    #@79
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@7c
    move-result v23

    #@7d
    .line 142
    move-object/from16 v0, p0

    #@7f
    move/from16 v1, v23

    #@81
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    #@84
    move-result v21

    #@85
    .line 146
    .local v21, "priority":I
    const-string/jumbo v23, "plmn"

    #@88
    move-object/from16 v0, p0

    #@8a
    move-object/from16 v1, v23

    #@8c
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@8f
    move-result v39

    #@90
    .line 147
    .local v39, "plmnColumn":I
    const/16 v23, -0x1

    #@92
    move/from16 v0, v39

    #@94
    move/from16 v1, v23

    #@96
    if-eq v0, v1, :cond_0

    #@98
    move-object/from16 v0, p0

    #@9a
    move/from16 v1, v39

    #@9c
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    #@9f
    move-result v23

    #@a0
    if-eqz v23, :cond_5

    #@a2
    .line 150
    :cond_0
    const/16 v38, 0x0

    #@a4
    .line 154
    :goto_0
    const-string/jumbo v23, "lac"

    #@a7
    move-object/from16 v0, p0

    #@a9
    move-object/from16 v1, v23

    #@ab
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@ae
    move-result v37

    #@af
    .line 155
    .local v37, "lacColumn":I
    const/16 v23, -0x1

    #@b1
    move/from16 v0, v37

    #@b3
    move/from16 v1, v23

    #@b5
    if-eq v0, v1, :cond_1

    #@b7
    move-object/from16 v0, p0

    #@b9
    move/from16 v1, v37

    #@bb
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    #@be
    move-result v23

    #@bf
    if-eqz v23, :cond_6

    #@c1
    .line 158
    :cond_1
    const/16 v36, -0x1

    #@c3
    .line 162
    .local v36, "lac":I
    :goto_1
    const-string/jumbo v23, "cid"

    #@c6
    move-object/from16 v0, p0

    #@c8
    move-object/from16 v1, v23

    #@ca
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@cd
    move-result v25

    #@ce
    .line 163
    .local v25, "cidColumn":I
    const/16 v23, -0x1

    #@d0
    move/from16 v0, v25

    #@d2
    move/from16 v1, v23

    #@d4
    if-eq v0, v1, :cond_2

    #@d6
    move-object/from16 v0, p0

    #@d8
    move/from16 v1, v25

    #@da
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    #@dd
    move-result v23

    #@de
    if-eqz v23, :cond_7

    #@e0
    .line 166
    :cond_2
    const/16 v24, -0x1

    #@e2
    .line 169
    .local v24, "cid":I
    :goto_2
    new-instance v17, Landroid/telephony/SmsCbLocation;

    #@e4
    move-object/from16 v0, v17

    #@e6
    move-object/from16 v1, v38

    #@e8
    move/from16 v2, v36

    #@ea
    move/from16 v3, v24

    #@ec
    invoke-direct {v0, v1, v2, v3}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;II)V

    #@ef
    .line 173
    .local v17, "location":Landroid/telephony/SmsCbLocation;
    const-string/jumbo v23, "etws_warning_type"

    #@f2
    .line 172
    move-object/from16 v0, p0

    #@f4
    move-object/from16 v1, v23

    #@f6
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@f9
    move-result v34

    #@fa
    .line 174
    .local v34, "etwsWarningTypeColumn":I
    const/16 v23, -0x1

    #@fc
    move/from16 v0, v34

    #@fe
    move/from16 v1, v23

    #@100
    if-eq v0, v1, :cond_3

    #@102
    move-object/from16 v0, p0

    #@104
    move/from16 v1, v34

    #@106
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    #@109
    move-result v23

    #@10a
    if-eqz v23, :cond_8

    #@10c
    .line 178
    :cond_3
    const/16 v22, 0x0

    #@10e
    .line 183
    :goto_3
    const-string/jumbo v23, "cmas_message_class"

    #@111
    .line 182
    move-object/from16 v0, p0

    #@113
    move-object/from16 v1, v23

    #@115
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@118
    move-result v28

    #@119
    .line 184
    .local v28, "cmasMessageClassColumn":I
    const/16 v23, -0x1

    #@11b
    move/from16 v0, v28

    #@11d
    move/from16 v1, v23

    #@11f
    if-eq v0, v1, :cond_4

    #@121
    move-object/from16 v0, p0

    #@123
    move/from16 v1, v28

    #@125
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    #@128
    move-result v23

    #@129
    if-eqz v23, :cond_9

    #@12b
    .line 235
    :cond_4
    const/4 v6, 0x0

    #@12c
    .line 238
    :goto_4
    new-instance v13, Landroid/telephony/SmsCbMessage;

    #@12e
    move-object/from16 v23, v6

    #@130
    invoke-direct/range {v13 .. v23}, Landroid/telephony/SmsCbMessage;-><init>(IIILandroid/telephony/SmsCbLocation;ILjava/lang/String;Ljava/lang/String;ILandroid/telephony/SmsCbEtwsInfo;Landroid/telephony/SmsCbCmasInfo;)V

    #@133
    .line 242
    .local v13, "msg":Landroid/telephony/SmsCbMessage;
    const-string/jumbo v23, "date"

    #@136
    .line 241
    move-object/from16 v0, p0

    #@138
    move-object/from16 v1, v23

    #@13a
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@13d
    move-result v23

    #@13e
    move-object/from16 v0, p0

    #@140
    move/from16 v1, v23

    #@142
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    #@145
    move-result-wide v32

    #@146
    .line 244
    .local v32, "deliveryTime":J
    const-string/jumbo v23, "read"

    #@149
    .line 243
    move-object/from16 v0, p0

    #@14b
    move-object/from16 v1, v23

    #@14d
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@150
    move-result v23

    #@151
    move-object/from16 v0, p0

    #@153
    move/from16 v1, v23

    #@155
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    #@158
    move-result v23

    #@159
    if-eqz v23, :cond_14

    #@15b
    const/16 v35, 0x1

    #@15d
    .line 246
    .local v35, "isRead":Z
    :goto_5
    new-instance v23, Landroid/telephony/CellBroadcastMessage;

    #@15f
    move-object/from16 v0, v23

    #@161
    move-wide/from16 v1, v32

    #@163
    move/from16 v3, v35

    #@165
    invoke-direct {v0, v13, v1, v2, v3}, Landroid/telephony/CellBroadcastMessage;-><init>(Landroid/telephony/SmsCbMessage;JZ)V

    #@168
    return-object v23

    #@169
    .line 148
    .end local v13    # "msg":Landroid/telephony/SmsCbMessage;
    .end local v17    # "location":Landroid/telephony/SmsCbLocation;
    .end local v24    # "cid":I
    .end local v25    # "cidColumn":I
    .end local v28    # "cmasMessageClassColumn":I
    .end local v32    # "deliveryTime":J
    .end local v34    # "etwsWarningTypeColumn":I
    .end local v35    # "isRead":Z
    .end local v36    # "lac":I
    .end local v37    # "lacColumn":I
    :cond_5
    move-object/from16 v0, p0

    #@16b
    move/from16 v1, v39

    #@16d
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@170
    move-result-object v38

    #@171
    .local v38, "plmn":Ljava/lang/String;
    goto/16 :goto_0

    #@173
    .line 156
    .end local v38    # "plmn":Ljava/lang/String;
    .restart local v37    # "lacColumn":I
    :cond_6
    move-object/from16 v0, p0

    #@175
    move/from16 v1, v37

    #@177
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    #@17a
    move-result v36

    #@17b
    .restart local v36    # "lac":I
    goto/16 :goto_1

    #@17d
    .line 164
    .restart local v25    # "cidColumn":I
    :cond_7
    move-object/from16 v0, p0

    #@17f
    move/from16 v1, v25

    #@181
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    #@184
    move-result v24

    #@185
    .restart local v24    # "cid":I
    goto/16 :goto_2

    #@187
    .line 175
    .restart local v17    # "location":Landroid/telephony/SmsCbLocation;
    .restart local v34    # "etwsWarningTypeColumn":I
    :cond_8
    move-object/from16 v0, p0

    #@189
    move/from16 v1, v34

    #@18b
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    #@18e
    move-result v40

    #@18f
    .line 176
    .local v40, "warningType":I
    new-instance v22, Landroid/telephony/SmsCbEtwsInfo;

    #@191
    const/16 v23, 0x0

    #@193
    const/16 v41, 0x0

    #@195
    const/16 v42, 0x0

    #@197
    move-object/from16 v0, v22

    #@199
    move/from16 v1, v40

    #@19b
    move/from16 v2, v23

    #@19d
    move/from16 v3, v41

    #@19f
    move-object/from16 v4, v42

    #@1a1
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/telephony/SmsCbEtwsInfo;-><init>(IZZ[B)V

    #@1a4
    .line 174
    .local v22, "etwsInfo":Landroid/telephony/SmsCbEtwsInfo;
    goto/16 :goto_3

    #@1a6
    .line 185
    .end local v22    # "etwsInfo":Landroid/telephony/SmsCbEtwsInfo;
    .end local v40    # "warningType":I
    .restart local v28    # "cmasMessageClassColumn":I
    :cond_9
    move-object/from16 v0, p0

    #@1a8
    move/from16 v1, v28

    #@1aa
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    #@1ad
    move-result v7

    #@1ae
    .line 189
    .local v7, "messageClass":I
    const-string/jumbo v23, "cmas_category"

    #@1b1
    .line 188
    move-object/from16 v0, p0

    #@1b3
    move-object/from16 v1, v23

    #@1b5
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@1b8
    move-result v26

    #@1b9
    .line 190
    .local v26, "cmasCategoryColumn":I
    const/16 v23, -0x1

    #@1bb
    move/from16 v0, v26

    #@1bd
    move/from16 v1, v23

    #@1bf
    if-eq v0, v1, :cond_a

    #@1c1
    move-object/from16 v0, p0

    #@1c3
    move/from16 v1, v26

    #@1c5
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    #@1c8
    move-result v23

    #@1c9
    if-eqz v23, :cond_f

    #@1cb
    .line 193
    :cond_a
    const/4 v8, -0x1

    #@1cc
    .line 198
    .local v8, "cmasCategory":I
    :goto_6
    const-string/jumbo v23, "cmas_response_type"

    #@1cf
    .line 197
    move-object/from16 v0, p0

    #@1d1
    move-object/from16 v1, v23

    #@1d3
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@1d6
    move-result v29

    #@1d7
    .line 199
    .local v29, "cmasResponseTypeColumn":I
    const/16 v23, -0x1

    #@1d9
    move/from16 v0, v29

    #@1db
    move/from16 v1, v23

    #@1dd
    if-eq v0, v1, :cond_b

    #@1df
    move-object/from16 v0, p0

    #@1e1
    move/from16 v1, v29

    #@1e3
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    #@1e6
    move-result v23

    #@1e7
    if-eqz v23, :cond_10

    #@1e9
    .line 202
    :cond_b
    const/4 v9, -0x1

    #@1ea
    .line 207
    .local v9, "responseType":I
    :goto_7
    const-string/jumbo v23, "cmas_severity"

    #@1ed
    .line 206
    move-object/from16 v0, p0

    #@1ef
    move-object/from16 v1, v23

    #@1f1
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@1f4
    move-result v30

    #@1f5
    .line 208
    .local v30, "cmasSeverityColumn":I
    const/16 v23, -0x1

    #@1f7
    move/from16 v0, v30

    #@1f9
    move/from16 v1, v23

    #@1fb
    if-eq v0, v1, :cond_c

    #@1fd
    move-object/from16 v0, p0

    #@1ff
    move/from16 v1, v30

    #@201
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    #@204
    move-result v23

    #@205
    if-eqz v23, :cond_11

    #@207
    .line 211
    :cond_c
    const/4 v10, -0x1

    #@208
    .line 216
    .local v10, "severity":I
    :goto_8
    const-string/jumbo v23, "cmas_urgency"

    #@20b
    .line 215
    move-object/from16 v0, p0

    #@20d
    move-object/from16 v1, v23

    #@20f
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@212
    move-result v31

    #@213
    .line 217
    .local v31, "cmasUrgencyColumn":I
    const/16 v23, -0x1

    #@215
    move/from16 v0, v31

    #@217
    move/from16 v1, v23

    #@219
    if-eq v0, v1, :cond_d

    #@21b
    move-object/from16 v0, p0

    #@21d
    move/from16 v1, v31

    #@21f
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    #@222
    move-result v23

    #@223
    if-eqz v23, :cond_12

    #@225
    .line 220
    :cond_d
    const/4 v11, -0x1

    #@226
    .line 225
    .local v11, "urgency":I
    :goto_9
    const-string/jumbo v23, "cmas_certainty"

    #@229
    .line 224
    move-object/from16 v0, p0

    #@22b
    move-object/from16 v1, v23

    #@22d
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@230
    move-result v27

    #@231
    .line 226
    .local v27, "cmasCertaintyColumn":I
    const/16 v23, -0x1

    #@233
    move/from16 v0, v27

    #@235
    move/from16 v1, v23

    #@237
    if-eq v0, v1, :cond_e

    #@239
    move-object/from16 v0, p0

    #@23b
    move/from16 v1, v27

    #@23d
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    #@240
    move-result v23

    #@241
    if-eqz v23, :cond_13

    #@243
    .line 229
    :cond_e
    const/4 v12, -0x1

    #@244
    .line 232
    .local v12, "certainty":I
    :goto_a
    new-instance v6, Landroid/telephony/SmsCbCmasInfo;

    #@246
    invoke-direct/range {v6 .. v12}, Landroid/telephony/SmsCbCmasInfo;-><init>(IIIIII)V

    #@249
    .line 184
    .local v6, "cmasInfo":Landroid/telephony/SmsCbCmasInfo;
    goto/16 :goto_4

    #@24b
    .line 191
    .end local v6    # "cmasInfo":Landroid/telephony/SmsCbCmasInfo;
    .end local v8    # "cmasCategory":I
    .end local v9    # "responseType":I
    .end local v10    # "severity":I
    .end local v11    # "urgency":I
    .end local v12    # "certainty":I
    .end local v27    # "cmasCertaintyColumn":I
    .end local v29    # "cmasResponseTypeColumn":I
    .end local v30    # "cmasSeverityColumn":I
    .end local v31    # "cmasUrgencyColumn":I
    :cond_f
    move-object/from16 v0, p0

    #@24d
    move/from16 v1, v26

    #@24f
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    #@252
    move-result v8

    #@253
    .restart local v8    # "cmasCategory":I
    goto/16 :goto_6

    #@255
    .line 200
    .restart local v29    # "cmasResponseTypeColumn":I
    :cond_10
    move-object/from16 v0, p0

    #@257
    move/from16 v1, v29

    #@259
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    #@25c
    move-result v9

    #@25d
    .restart local v9    # "responseType":I
    goto :goto_7

    #@25e
    .line 209
    .restart local v30    # "cmasSeverityColumn":I
    :cond_11
    move-object/from16 v0, p0

    #@260
    move/from16 v1, v30

    #@262
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    #@265
    move-result v10

    #@266
    .restart local v10    # "severity":I
    goto :goto_8

    #@267
    .line 218
    .restart local v31    # "cmasUrgencyColumn":I
    :cond_12
    move-object/from16 v0, p0

    #@269
    move/from16 v1, v31

    #@26b
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    #@26e
    move-result v11

    #@26f
    .restart local v11    # "urgency":I
    goto :goto_9

    #@270
    .line 227
    .restart local v27    # "cmasCertaintyColumn":I
    :cond_13
    move-object/from16 v0, p0

    #@272
    move/from16 v1, v27

    #@274
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    #@277
    move-result v12

    #@278
    .restart local v12    # "certainty":I
    goto :goto_a

    #@279
    .line 243
    .end local v7    # "messageClass":I
    .end local v8    # "cmasCategory":I
    .end local v9    # "responseType":I
    .end local v10    # "severity":I
    .end local v11    # "urgency":I
    .end local v12    # "certainty":I
    .end local v26    # "cmasCategoryColumn":I
    .end local v27    # "cmasCertaintyColumn":I
    .end local v29    # "cmasResponseTypeColumn":I
    .end local v30    # "cmasSeverityColumn":I
    .end local v31    # "cmasUrgencyColumn":I
    .restart local v13    # "msg":Landroid/telephony/SmsCbMessage;
    .restart local v32    # "deliveryTime":J
    :cond_14
    const/16 v35, 0x0

    #@27b
    .restart local v35    # "isRead":Z
    goto/16 :goto_5
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 99
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getCmasMessageClass()I
    .locals 1

    #@0
    .prologue
    .line 379
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    #@2
    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->isCmasMessage()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 380
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    #@a
    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getCmasWarningInfo()Landroid/telephony/SmsCbCmasInfo;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Landroid/telephony/SmsCbCmasInfo;->getMessageClass()I

    #@11
    move-result v0

    #@12
    return v0

    #@13
    .line 382
    :cond_0
    const/4 v0, -0x1

    #@14
    return v0
.end method

.method public getCmasWarningInfo()Landroid/telephony/SmsCbCmasInfo;
    .locals 1

    #@0
    .prologue
    .line 327
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    #@2
    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getCmasWarningInfo()Landroid/telephony/SmsCbCmasInfo;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .locals 8

    #@0
    .prologue
    const/4 v7, -0x1

    #@1
    .line 254
    new-instance v1, Landroid/content/ContentValues;

    #@3
    const/16 v5, 0x10

    #@5
    invoke-direct {v1, v5}, Landroid/content/ContentValues;-><init>(I)V

    #@8
    .line 255
    .local v1, "cv":Landroid/content/ContentValues;
    iget-object v4, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    #@a
    .line 256
    .local v4, "msg":Landroid/telephony/SmsCbMessage;
    const-string/jumbo v5, "geo_scope"

    #@d
    invoke-virtual {v4}, Landroid/telephony/SmsCbMessage;->getGeographicalScope()I

    #@10
    move-result v6

    #@11
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v6

    #@15
    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@18
    .line 257
    invoke-virtual {v4}, Landroid/telephony/SmsCbMessage;->getLocation()Landroid/telephony/SmsCbLocation;

    #@1b
    move-result-object v3

    #@1c
    .line 258
    .local v3, "location":Landroid/telephony/SmsCbLocation;
    invoke-virtual {v3}, Landroid/telephony/SmsCbLocation;->getPlmn()Ljava/lang/String;

    #@1f
    move-result-object v5

    #@20
    if-eqz v5, :cond_0

    #@22
    .line 259
    const-string/jumbo v5, "plmn"

    #@25
    invoke-virtual {v3}, Landroid/telephony/SmsCbLocation;->getPlmn()Ljava/lang/String;

    #@28
    move-result-object v6

    #@29
    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@2c
    .line 261
    :cond_0
    invoke-virtual {v3}, Landroid/telephony/SmsCbLocation;->getLac()I

    #@2f
    move-result v5

    #@30
    if-eq v5, v7, :cond_1

    #@32
    .line 262
    const-string/jumbo v5, "lac"

    #@35
    invoke-virtual {v3}, Landroid/telephony/SmsCbLocation;->getLac()I

    #@38
    move-result v6

    #@39
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3c
    move-result-object v6

    #@3d
    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@40
    .line 264
    :cond_1
    invoke-virtual {v3}, Landroid/telephony/SmsCbLocation;->getCid()I

    #@43
    move-result v5

    #@44
    if-eq v5, v7, :cond_2

    #@46
    .line 265
    const-string/jumbo v5, "cid"

    #@49
    invoke-virtual {v3}, Landroid/telephony/SmsCbLocation;->getCid()I

    #@4c
    move-result v6

    #@4d
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@50
    move-result-object v6

    #@51
    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@54
    .line 267
    :cond_2
    const-string/jumbo v5, "serial_number"

    #@57
    invoke-virtual {v4}, Landroid/telephony/SmsCbMessage;->getSerialNumber()I

    #@5a
    move-result v6

    #@5b
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5e
    move-result-object v6

    #@5f
    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@62
    .line 268
    const-string/jumbo v5, "service_category"

    #@65
    invoke-virtual {v4}, Landroid/telephony/SmsCbMessage;->getServiceCategory()I

    #@68
    move-result v6

    #@69
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6c
    move-result-object v6

    #@6d
    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@70
    .line 269
    const-string/jumbo v5, "language"

    #@73
    invoke-virtual {v4}, Landroid/telephony/SmsCbMessage;->getLanguageCode()Ljava/lang/String;

    #@76
    move-result-object v6

    #@77
    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@7a
    .line 270
    const-string/jumbo v5, "body"

    #@7d
    invoke-virtual {v4}, Landroid/telephony/SmsCbMessage;->getMessageBody()Ljava/lang/String;

    #@80
    move-result-object v6

    #@81
    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@84
    .line 271
    const-string/jumbo v5, "date"

    #@87
    iget-wide v6, p0, Landroid/telephony/CellBroadcastMessage;->mDeliveryTime:J

    #@89
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@8c
    move-result-object v6

    #@8d
    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@90
    .line 272
    const-string/jumbo v5, "read"

    #@93
    iget-boolean v6, p0, Landroid/telephony/CellBroadcastMessage;->mIsRead:Z

    #@95
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@98
    move-result-object v6

    #@99
    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@9c
    .line 273
    const-string/jumbo v5, "format"

    #@9f
    invoke-virtual {v4}, Landroid/telephony/SmsCbMessage;->getMessageFormat()I

    #@a2
    move-result v6

    #@a3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a6
    move-result-object v6

    #@a7
    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@aa
    .line 274
    const-string/jumbo v5, "priority"

    #@ad
    invoke-virtual {v4}, Landroid/telephony/SmsCbMessage;->getMessagePriority()I

    #@b0
    move-result v6

    #@b1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b4
    move-result-object v6

    #@b5
    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@b8
    .line 276
    iget-object v5, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    #@ba
    invoke-virtual {v5}, Landroid/telephony/SmsCbMessage;->getEtwsWarningInfo()Landroid/telephony/SmsCbEtwsInfo;

    #@bd
    move-result-object v2

    #@be
    .line 277
    .local v2, "etwsInfo":Landroid/telephony/SmsCbEtwsInfo;
    if-eqz v2, :cond_3

    #@c0
    .line 278
    const-string/jumbo v5, "etws_warning_type"

    #@c3
    invoke-virtual {v2}, Landroid/telephony/SmsCbEtwsInfo;->getWarningType()I

    #@c6
    move-result v6

    #@c7
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ca
    move-result-object v6

    #@cb
    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@ce
    .line 281
    :cond_3
    iget-object v5, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    #@d0
    invoke-virtual {v5}, Landroid/telephony/SmsCbMessage;->getCmasWarningInfo()Landroid/telephony/SmsCbCmasInfo;

    #@d3
    move-result-object v0

    #@d4
    .line 282
    .local v0, "cmasInfo":Landroid/telephony/SmsCbCmasInfo;
    if-eqz v0, :cond_4

    #@d6
    .line 283
    const-string/jumbo v5, "cmas_message_class"

    #@d9
    invoke-virtual {v0}, Landroid/telephony/SmsCbCmasInfo;->getMessageClass()I

    #@dc
    move-result v6

    #@dd
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e0
    move-result-object v6

    #@e1
    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@e4
    .line 284
    const-string/jumbo v5, "cmas_category"

    #@e7
    invoke-virtual {v0}, Landroid/telephony/SmsCbCmasInfo;->getCategory()I

    #@ea
    move-result v6

    #@eb
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ee
    move-result-object v6

    #@ef
    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@f2
    .line 285
    const-string/jumbo v5, "cmas_response_type"

    #@f5
    invoke-virtual {v0}, Landroid/telephony/SmsCbCmasInfo;->getResponseType()I

    #@f8
    move-result v6

    #@f9
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@fc
    move-result-object v6

    #@fd
    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@100
    .line 286
    const-string/jumbo v5, "cmas_severity"

    #@103
    invoke-virtual {v0}, Landroid/telephony/SmsCbCmasInfo;->getSeverity()I

    #@106
    move-result v6

    #@107
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10a
    move-result-object v6

    #@10b
    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@10e
    .line 287
    const-string/jumbo v5, "cmas_urgency"

    #@111
    invoke-virtual {v0}, Landroid/telephony/SmsCbCmasInfo;->getUrgency()I

    #@114
    move-result v6

    #@115
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@118
    move-result-object v6

    #@119
    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@11c
    .line 288
    const-string/jumbo v5, "cmas_certainty"

    #@11f
    invoke-virtual {v0}, Landroid/telephony/SmsCbCmasInfo;->getCertainty()I

    #@122
    move-result v6

    #@123
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@126
    move-result-object v6

    #@127
    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@12a
    .line 291
    :cond_4
    return-object v1
.end method

.method public getDateString(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 422
    const v0, 0x80b11

    #@3
    .line 425
    .local v0, "flags":I
    iget-wide v2, p0, Landroid/telephony/CellBroadcastMessage;->mDeliveryTime:J

    #@5
    invoke-static {p1, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    return-object v1
.end method

.method public getDeliveryTime()J
    .locals 2

    #@0
    .prologue
    .line 311
    iget-wide v0, p0, Landroid/telephony/CellBroadcastMessage;->mDeliveryTime:J

    #@2
    return-wide v0
.end method

.method public getEtwsWarningInfo()Landroid/telephony/SmsCbEtwsInfo;
    .locals 1

    #@0
    .prologue
    .line 331
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    #@2
    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getEtwsWarningInfo()Landroid/telephony/SmsCbEtwsInfo;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 303
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    #@2
    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getLanguageCode()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 315
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    #@2
    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getMessageBody()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSerialNumber()I
    .locals 1

    #@0
    .prologue
    .line 323
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    #@2
    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getSerialNumber()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getServiceCategory()I
    .locals 1

    #@0
    .prologue
    .line 307
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    #@2
    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getServiceCategory()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getSpokenDateString(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 434
    const/16 v0, 0x11

    #@2
    .line 435
    .local v0, "flags":I
    iget-wide v2, p0, Landroid/telephony/CellBroadcastMessage;->mDeliveryTime:J

    #@4
    invoke-static {p1, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method

.method public getSubId()I
    .locals 1

    #@0
    .prologue
    .line 74
    iget v0, p0, Landroid/telephony/CellBroadcastMessage;->mSubId:I

    #@2
    return v0
.end method

.method public isCmasMessage()Z
    .locals 1

    #@0
    .prologue
    .line 370
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    #@2
    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->isCmasMessage()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isEmergencyAlertMessage()Z
    .locals 1

    #@0
    .prologue
    .line 354
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    #@2
    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->isEmergencyMessage()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isEtwsEmergencyUserAlert()Z
    .locals 2

    #@0
    .prologue
    .line 402
    iget-object v1, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    #@2
    invoke-virtual {v1}, Landroid/telephony/SmsCbMessage;->getEtwsWarningInfo()Landroid/telephony/SmsCbEtwsInfo;

    #@5
    move-result-object v0

    #@6
    .line 403
    .local v0, "etwsInfo":Landroid/telephony/SmsCbEtwsInfo;
    if-eqz v0, :cond_0

    #@8
    invoke-virtual {v0}, Landroid/telephony/SmsCbEtwsInfo;->isEmergencyUserAlert()Z

    #@b
    move-result v1

    #@c
    :goto_0
    return v1

    #@d
    :cond_0
    const/4 v1, 0x0

    #@e
    goto :goto_0
.end method

.method public isEtwsMessage()Z
    .locals 1

    #@0
    .prologue
    .line 362
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    #@2
    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->isEtwsMessage()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isEtwsPopupAlert()Z
    .locals 2

    #@0
    .prologue
    .line 392
    iget-object v1, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    #@2
    invoke-virtual {v1}, Landroid/telephony/SmsCbMessage;->getEtwsWarningInfo()Landroid/telephony/SmsCbEtwsInfo;

    #@5
    move-result-object v0

    #@6
    .line 393
    .local v0, "etwsInfo":Landroid/telephony/SmsCbEtwsInfo;
    if-eqz v0, :cond_0

    #@8
    invoke-virtual {v0}, Landroid/telephony/SmsCbEtwsInfo;->isPopupAlert()Z

    #@b
    move-result v1

    #@c
    :goto_0
    return v1

    #@d
    :cond_0
    const/4 v1, 0x0

    #@e
    goto :goto_0
.end method

.method public isEtwsTestMessage()Z
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 411
    iget-object v2, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    #@3
    invoke-virtual {v2}, Landroid/telephony/SmsCbMessage;->getEtwsWarningInfo()Landroid/telephony/SmsCbEtwsInfo;

    #@6
    move-result-object v0

    #@7
    .line 412
    .local v0, "etwsInfo":Landroid/telephony/SmsCbEtwsInfo;
    if-eqz v0, :cond_0

    #@9
    .line 413
    invoke-virtual {v0}, Landroid/telephony/SmsCbEtwsInfo;->getWarningType()I

    #@c
    move-result v2

    #@d
    const/4 v3, 0x3

    #@e
    if-ne v2, v3, :cond_0

    #@10
    const/4 v1, 0x1

    #@11
    .line 412
    :cond_0
    return v1
.end method

.method public isPublicAlertMessage()Z
    .locals 1

    #@0
    .prologue
    .line 344
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    #@2
    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->isEmergencyMessage()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isRead()Z
    .locals 1

    #@0
    .prologue
    .line 319
    iget-boolean v0, p0, Landroid/telephony/CellBroadcastMessage;->mIsRead:Z

    #@2
    return v0
.end method

.method public setIsRead(Z)V
    .locals 0
    .param p1, "isRead"    # Z

    #@0
    .prologue
    .line 299
    iput-boolean p1, p0, Landroid/telephony/CellBroadcastMessage;->mIsRead:Z

    #@2
    .line 298
    return-void
.end method

.method public setSubId(I)V
    .locals 0
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 65
    iput p1, p0, Landroid/telephony/CellBroadcastMessage;->mSubId:I

    #@2
    .line 64
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 104
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/telephony/SmsCbMessage;->writeToParcel(Landroid/os/Parcel;I)V

    #@5
    .line 105
    iget-wide v0, p0, Landroid/telephony/CellBroadcastMessage;->mDeliveryTime:J

    #@7
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@a
    .line 106
    iget-boolean v0, p0, Landroid/telephony/CellBroadcastMessage;->mIsRead:Z

    #@c
    if-eqz v0, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 107
    iget v0, p0, Landroid/telephony/CellBroadcastMessage;->mSubId:I

    #@14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 103
    return-void

    #@18
    .line 106
    :cond_0
    const/4 v0, 0x0

    #@19
    goto :goto_0
.end method
