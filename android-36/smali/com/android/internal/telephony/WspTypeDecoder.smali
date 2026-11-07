.class public Lcom/android/internal/telephony/WspTypeDecoder;
.super Ljava/lang/Object;
.source "WspTypeDecoder.java"


# static fields
.field public static final blacklist CONTENT_TYPE_B_MMS:Ljava/lang/String; = "application/vnd.wap.mms-message"

.field public static final blacklist CONTENT_TYPE_B_PUSH_CO:Ljava/lang/String; = "application/vnd.wap.coc"

.field public static final blacklist CONTENT_TYPE_B_PUSH_SYNCML_NOTI:Ljava/lang/String; = "application/vnd.syncml.notification"

.field public static final blacklist PARAMETER_ID_X_WAP_APPLICATION_ID:I = 0x2f

.field public static final blacklist PDU_TYPE_CONFIRMED_PUSH:I = 0x7

.field public static final blacklist PDU_TYPE_PUSH:I = 0x6

.field private static final blacklist WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field blacklist mContentParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mDataLength:I

.field blacklist mStringValue:Ljava/lang/String;

.field blacklist mUnsigned32bit:J

.field greylist-max-r mWspData:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 26

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    .line 40
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    const/4 v2, 0x0

    .line 47
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "*/*"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    .line 48
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "text/*"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x2

    .line 49
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "text/html"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x3

    .line 50
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "text/plain"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x4

    .line 51
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "text/x-hdml"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x5

    .line 52
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "text/x-ttml"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x6

    .line 53
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "text/x-vCalendar"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x7

    .line 54
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "text/x-vCard"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0x8

    .line 55
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "text/vnd.wap.wml"

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v8, 0x9

    .line 56
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "text/vnd.wap.wmlscript"

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v9, 0xa

    .line 57
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "text/vnd.wap.wta-event"

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v9, 0xb

    .line 58
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "multipart/*"

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v9, 0xc

    .line 59
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "multipart/mixed"

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v9, 0xd

    .line 60
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "multipart/form-data"

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v9, 0xe

    .line 61
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "multipart/byterantes"

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v10, 0xf

    .line 62
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "multipart/alternative"

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v10, 0x10

    .line 63
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "application/*"

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v11, 0x11

    .line 64
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "application/java-vm"

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v12, 0x12

    .line 65
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v13, 0x13

    .line 66
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "application/x-hdmlc"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x14

    .line 67
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.wap.wmlc"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v15, 0x15

    .line 68
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v16, v14

    const-string v14, "application/vnd.wap.wmlscriptc"

    invoke-virtual {v0, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x16

    .line 69
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v17, v15

    const-string v15, "application/vnd.wap.wta-eventc"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v18, 0x17

    .line 70
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v19, v14

    const-string v14, "application/vnd.wap.uaprof"

    invoke-virtual {v0, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x18

    .line 71
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move/from16 v20, v14

    const-string v14, "application/vnd.wap.wtls-ca-certificate"

    invoke-virtual {v0, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x19

    .line 72
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move/from16 v21, v14

    const-string v14, "application/vnd.wap.wtls-user-certificate"

    invoke-virtual {v0, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x1a

    .line 73
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move/from16 v22, v14

    const-string v14, "application/x-x509-ca-cert"

    invoke-virtual {v0, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x1b

    .line 74
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move/from16 v23, v14

    const-string v14, "application/x-x509-user-cert"

    invoke-virtual {v0, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x1c

    .line 75
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move/from16 v24, v14

    const-string v14, "image/*"

    invoke-virtual {v0, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x1d

    .line 76
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move/from16 v25, v14

    const-string v14, "image/gif"

    invoke-virtual {v0, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x1e

    .line 77
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "image/jpeg"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x1f

    .line 78
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "image/tiff"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x20

    .line 79
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "image/png"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x21

    .line 80
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "image/vnd.wap.wbmp"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x22

    .line 81
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.wap.multipart.*"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x23

    .line 82
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.wap.multipart.mixed"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x24

    .line 83
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.wap.multipart.form-data"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x25

    .line 84
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.wap.multipart.byteranges"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x26

    .line 85
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.wap.multipart.alternative"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x27

    .line 86
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/xml"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x28

    .line 87
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "text/xml"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x29

    .line 88
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.wap.wbxml"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x2a

    .line 89
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/x-x968-cross-cert"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x2b

    .line 90
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/x-x968-ca-cert"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x2c

    .line 91
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/x-x968-user-cert"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x2d

    .line 92
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "text/vnd.wap.si"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x2e

    .line 93
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.wap.sic"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x2f

    .line 94
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "text/vnd.wap.sl"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x30

    .line 95
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.wap.slc"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x31

    .line 96
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "text/vnd.wap.co"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x32

    .line 97
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.wap.coc"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x33

    .line 98
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.wap.multipart.related"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x34

    .line 99
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.wap.sia"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x35

    .line 100
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "text/vnd.wap.connectivity-xml"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x36

    .line 101
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.wap.connectivity-wbxml"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x37

    .line 102
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/pkcs7-mime"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x38

    .line 103
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.wap.hashed-certificate"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x39

    .line 104
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.wap.signed-certificate"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x3a

    .line 105
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.wap.cert-response"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x3b

    .line 106
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/xhtml+xml"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x3c

    .line 107
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/wml+xml"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x3d

    .line 108
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "text/css"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x3e

    .line 109
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.wap.mms-message"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x3f

    .line 110
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.wap.rollover-certificate"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x40

    .line 111
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.wap.locc+wbxml"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x41

    .line 112
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.wap.loc+xml"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x42

    .line 113
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.syncml.dm+wbxml"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x43

    .line 114
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.syncml.dm+xml"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x44

    .line 115
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.syncml.notification"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x45

    .line 116
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.wap.xhtml+xml"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x46

    .line 117
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.wv.csp.cir"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x47

    .line 118
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.oma.dd+xml"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x48

    .line 119
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.oma.drm.message"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x49

    .line 120
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.oma.drm.content"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x4a

    .line 121
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.oma.drm.rights+xml"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x4b

    .line 122
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.oma.drm.rights+wbxml"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x4c

    .line 123
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.wv.csp+xml"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x4d

    .line 124
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.wv.csp+wbxml"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x4e

    .line 125
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.syncml.ds.notification"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x4f

    .line 126
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "audio/*"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x50

    .line 127
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "video/*"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x51

    .line 128
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.oma.dd2+xml"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x52

    .line 129
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/mikey"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x53

    .line 130
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.oma.dcd"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x54

    .line 131
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.oma.dcdc"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x201

    .line 133
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.uplanet.cacheop-wbxml"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x202

    .line 134
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.uplanet.signal"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x203

    .line 135
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.uplanet.alert-wbxml"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x204

    .line 136
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.uplanet.list-wbxml"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x205

    .line 137
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.uplanet.listcmd-wbxml"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x206

    .line 138
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.uplanet.channel-wbxml"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x207

    .line 139
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.uplanet.provisioning-status-uri"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x208

    .line 140
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "x-wap.multipart/vnd.uplanet.header-set"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x209

    .line 141
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.uplanet.bearer-choice-wbxml"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x20a

    .line 142
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.phonecom.mmc-wbxml"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x20b

    .line 143
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.nokia.syncset+wbxml"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x20c

    .line 144
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "image/x-up-wpng"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x300

    .line 145
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/iota.mmc-wbxml"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x301

    .line 146
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/iota.mmc-xml"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x302

    .line 147
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.syncml+xml"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x303

    .line 148
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.syncml+wbxml"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x304

    .line 149
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "text/vnd.wap.emn+xml"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x305

    .line 150
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "text/calendar"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x306

    .line 151
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.omads-email+xml"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x307

    .line 152
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.omads-file+xml"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x308

    .line 153
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.omads-folder+xml"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x309

    .line 154
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "text/directory;profile=vCard"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x30a

    .line 155
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.wap.emn+wbxml"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x30b

    .line 156
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.nokia.ipdc-purchase-response"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x30c

    .line 157
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.motorola.screen3+xml"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x30d

    .line 158
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.motorola.screen3+gzip"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x30e

    .line 159
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.cmcc.setting+wbxml"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x30f

    .line 160
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.cmcc.bombing+wbxml"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x310

    .line 161
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.docomo.pf"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x311

    .line 162
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.docomo.ub"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x312

    .line 163
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.omaloc-supl-init"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x313

    .line 164
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.oma.group-usage-list+xml"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x314

    .line 165
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/oma-directory+xml"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x315

    .line 166
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.docomo.pf2"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x316

    .line 167
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.oma.drm.roap-trigger+wbxml"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x317

    .line 168
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.sbm.mid2"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x318

    .line 169
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.wmf.bootstrap"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x319

    .line 170
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnc.cmcc.dcd+xml"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x31a

    .line 171
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.sbm.cid"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x31b

    .line 172
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "application/vnd.oma.bcast.provisioningtrigger"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v0, "Q"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v0, "Charset"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v0, "Level"

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v0, "Type"

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v0, "Differences"

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v0, "Padding"

    invoke-virtual {v1, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v0, "Type"

    invoke-virtual {v1, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v0, "Max-Age"

    invoke-virtual {v1, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v0, "Secure"

    invoke-virtual {v1, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v0, "SEC"

    invoke-virtual {v1, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v0, "MAC"

    invoke-virtual {v1, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v0, "Creation-date"

    invoke-virtual {v1, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v0, "Modification-date"

    move-object/from16 v2, v16

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v0, "Read-date"

    move-object/from16 v2, v17

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v0, "Size"

    move-object/from16 v2, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "Name"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "Filename"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "Start"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "Start-info"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "Comment"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "Domain"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "Path"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor greylist <init>([B)V
    .registers 2

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    return-void
.end method

.method private blacklist decodeNoValue(I)Z
    .registers 3

    .line 548
    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    aget-byte p1, v0, p1

    if-nez p1, :cond_a

    const/4 p1, 0x1

    .line 549
    iput p1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    return p1

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist expandWellKnownMimeType()V
    .registers 3

    .line 562
    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    if-nez v0, :cond_16

    .line 563
    iget-wide v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    long-to-int v0, v0

    .line 564
    sget-object v1, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    return-void

    :cond_16
    const-wide/16 v0, -0x1

    .line 566
    iput-wide v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    return-void
.end method

.method private blacklist readContentParameters(III)Z
    .registers 11

    const/4 v0, 0x1

    if-lez p2, :cond_ac

    .line 482
    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    aget-byte v1, v1, p1

    and-int/lit16 v2, v1, 0x80

    if-nez v2, :cond_17

    const/16 v2, 0x1f

    if-le v1, v2, :cond_17

    .line 486
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTokenText(I)Z

    .line 487
    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 488
    iget v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    goto :goto_6a

    .line 490
    :cond_17
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeIntegerValue(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_ab

    .line 491
    iget v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    .line 492
    iget-wide v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    long-to-int v3, v3

    .line 493
    sget-object v4, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_47

    .line 495
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unassigned/0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_47
    if-nez v3, :cond_68

    add-int v0, p1, v1

    .line 499
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 500
    iget v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    add-int/2addr v1, v0

    .line 501
    iget-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 502
    iget-object v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mContentParameters:Ljava/util/HashMap;

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr p1, v1

    sub-int/2addr p2, v1

    add-int/2addr p3, v1

    .line 503
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/WspTypeDecoder;->readContentParameters(III)Z

    move-result p0

    return p0

    :cond_67
    return v2

    :cond_68
    move v2, v1

    move-object v1, v4

    :goto_6a
    add-int v3, p1, v2

    .line 514
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeNoValue(I)Z

    move-result v4

    if-eqz v4, :cond_77

    .line 515
    iget v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    add-int/2addr v2, v0

    const/4 v0, 0x0

    goto :goto_9e

    .line 517
    :cond_77
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeIntegerValue(I)Z

    move-result v4

    if-eqz v4, :cond_88

    .line 518
    iget v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    add-int/2addr v2, v0

    .line 519
    iget-wide v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    long-to-int v0, v3

    .line 520
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9e

    .line 522
    :cond_88
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTokenText(I)Z

    .line 523
    iget v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    add-int/2addr v2, v3

    .line 524
    iget-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 525
    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9d

    .line 527
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9e

    :cond_9d
    move-object v0, v3

    .line 530
    :goto_9e
    iget-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mContentParameters:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr p1, v2

    sub-int/2addr p2, v2

    add-int/2addr p3, v2

    .line 531
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/WspTypeDecoder;->readContentParameters(III)Z

    move-result p0

    return p0

    :cond_ab
    return v2

    .line 535
    :cond_ac
    iput p3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    return v0
.end method


# virtual methods
.method public blacklist decodeConstrainedEncoding(I)Z
    .registers 4

    .line 405
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeShortInteger(I)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    const/4 p1, 0x0

    .line 406
    iput-object p1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    return v1

    .line 409
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeExtensionMedia(I)Z

    move-result p0

    return p0
.end method

.method public blacklist decodeContentLength(I)Z
    .registers 2

    .line 580
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeIntegerValue(I)Z

    move-result p0

    return p0
.end method

.method public blacklist decodeContentLocation(I)Z
    .registers 2

    .line 593
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    move-result p0

    return p0
.end method

.method public greylist decodeContentType(I)Z
    .registers 11

    .line 428
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mContentParameters:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 431
    :try_start_8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeValueLength(I)Z

    move-result v1

    if-nez v1, :cond_18

    .line 432
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeConstrainedEncoding(I)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 434
    invoke-direct {p0}, Lcom/android/internal/telephony/WspTypeDecoder;->expandWellKnownMimeType()V

    :cond_17
    return p1

    .line 438
    :cond_18
    iget-wide v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    long-to-int v1, v1

    .line 439
    invoke-virtual {p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v2

    add-int v3, p1, v2

    .line 440
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeIntegerValue(I)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4d

    .line 441
    iget v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    const/4 v4, 0x0

    .line 443
    iput-object v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 444
    invoke-direct {p0}, Lcom/android/internal/telephony/WspTypeDecoder;->expandWellKnownMimeType()V

    .line 445
    iget-wide v6, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    .line 446
    iget-object v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 447
    iget v8, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    add-int/2addr p1, v8

    sub-int/2addr v8, v2

    sub-int/2addr v1, v8

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/WspTypeDecoder;->readContentParameters(III)Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 449
    iget p1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    .line 450
    iput-wide v6, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    .line 451
    iput-object v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    return v5

    :cond_4c
    return v0

    .line 456
    :cond_4d
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeExtensionMedia(I)Z

    move-result v3

    if-ne v3, v5, :cond_74

    .line 457
    iget v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    .line 459
    invoke-direct {p0}, Lcom/android/internal/telephony/WspTypeDecoder;->expandWellKnownMimeType()V

    .line 460
    iget-wide v6, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    .line 461
    iget-object v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 462
    iget v8, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    add-int/2addr p1, v8

    sub-int/2addr v8, v2

    sub-int/2addr v1, v8

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/WspTypeDecoder;->readContentParameters(III)Z

    move-result p1

    if-eqz p1, :cond_74

    .line 464
    iget p1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    .line 465
    iput-wide v6, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    .line 466
    iput-object v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;
    :try_end_73
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_73} :catch_74

    return v5

    :catch_74
    :cond_74
    return v0
.end method

.method public blacklist decodeExtensionMedia(I)Z
    .registers 6

    const/4 v0, 0x0

    .line 380
    iput v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    const/4 v1, 0x0

    .line 381
    iput-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 382
    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    array-length v1, v1

    if-ge p1, v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    move v2, p1

    :goto_d
    if-ge v2, v1, :cond_18

    .line 385
    iget-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    aget-byte v3, v3, v2

    if-eqz v3, :cond_18

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_18
    sub-int/2addr v2, p1

    add-int/lit8 v1, v2, 0x1

    .line 389
    iput v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    .line 390
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    invoke-direct {v1, v3, p1, v2}, Ljava/lang/String;-><init>([BII)V

    iput-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    return v0
.end method

.method public greylist decodeIntegerValue(I)Z
    .registers 4

    .line 312
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeShortInteger(I)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    return v1

    .line 315
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeLongInteger(I)Z

    move-result p0

    return p0
.end method

.method public blacklist decodeLongInteger(I)Z
    .registers 9

    .line 288
    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x1e

    if-le v0, v1, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    const-wide/16 v1, 0x0

    .line 293
    iput-wide v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    const/4 v1, 0x1

    move v2, v1

    :goto_12
    if-gt v2, v0, :cond_28

    .line 295
    iget-wide v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    const/16 v5, 0x8

    shl-long/2addr v3, v5

    iget-object v5, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    add-int v6, p1, v2

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    or-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_28
    add-int/2addr v0, v1

    .line 297
    iput v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    return v1
.end method

.method public greylist decodeShortInteger(I)Z
    .registers 4

    .line 270
    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    aget-byte p1, v0, p1

    and-int/lit16 v0, p1, 0x80

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    and-int/lit8 p1, p1, 0x7f

    int-to-long v0, p1

    .line 273
    iput-wide v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    const/4 p1, 0x1

    .line 274
    iput p1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    return p1
.end method

.method public greylist decodeTextString(I)Z
    .registers 7

    move v0, p1

    .line 227
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    aget-byte v2, v1, v0

    if-eqz v2, :cond_a

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_a
    sub-int/2addr v0, p1

    add-int/lit8 v2, v0, 0x1

    .line 230
    iput v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    .line 231
    aget-byte v2, v1, p1

    const/16 v3, 0x7f

    const/4 v4, 0x1

    if-ne v2, v3, :cond_21

    .line 232
    new-instance v2, Ljava/lang/String;

    add-int/2addr p1, v4

    add-int/lit8 v0, v0, -0x1

    invoke-direct {v2, v1, p1, v0}, Ljava/lang/String;-><init>([BII)V

    iput-object v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    goto :goto_28

    .line 234
    :cond_21
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, p1, v0}, Ljava/lang/String;-><init>([BII)V

    iput-object v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    :goto_28
    return v4
.end method

.method public blacklist decodeTokenText(I)Z
    .registers 5

    move v0, p1

    .line 250
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    aget-byte v2, v1, v0

    if-eqz v2, :cond_a

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_a
    sub-int/2addr v0, p1

    add-int/lit8 v2, v0, 0x1

    .line 253
    iput v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    .line 254
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, p1, v0}, Ljava/lang/String;-><init>([BII)V

    iput-object v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    const/4 p0, 0x1

    return p0
.end method

.method public greylist decodeUintvarInteger(I)Z
    .registers 8

    const-wide/16 v0, 0x0

    .line 331
    iput-wide v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    move v0, p1

    .line 332
    :goto_5
    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    aget-byte v1, v1, v0

    and-int/lit16 v2, v1, 0x80

    const/4 v3, 0x7

    if-eqz v2, :cond_23

    sub-int v2, v0, p1

    const/4 v4, 0x4

    if-lt v2, v4, :cond_15

    const/4 p0, 0x0

    return p0

    .line 336
    :cond_15
    iget-wide v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    shl-long v2, v4, v3

    and-int/lit8 v1, v1, 0x7f

    int-to-long v4, v1

    or-long v1, v2, v4

    iput-wide v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 339
    :cond_23
    iget-wide v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    shl-long v2, v4, v3

    and-int/lit8 v1, v1, 0x7f

    int-to-long v4, v1

    or-long v1, v2, v4

    iput-wide v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    sub-int/2addr v0, p1

    const/4 p1, 0x1

    add-int/2addr v0, p1

    .line 340
    iput v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    return p1
.end method

.method public greylist decodeValueLength(I)Z
    .registers 6

    .line 355
    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    aget-byte v0, v0, p1

    and-int/lit16 v1, v0, 0xff

    const/16 v2, 0x1f

    if-le v1, v2, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    const/4 v1, 0x1

    if-ge v0, v2, :cond_15

    int-to-long v2, v0

    .line 359
    iput-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    .line 360
    iput v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    goto :goto_1e

    :cond_15
    add-int/2addr p1, v1

    .line 362
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    .line 363
    iget p1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    :goto_1e
    return v1
.end method

.method public greylist-max-r decodeXWapApplicationId(I)Z
    .registers 4

    .line 608
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeIntegerValue(I)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    const/4 p1, 0x0

    .line 609
    iput-object p1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    return v1

    .line 612
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    move-result p0

    return p0
.end method

.method public blacklist decodeXWapContentURI(I)Z
    .registers 2

    .line 690
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    move-result p0

    return p0
.end method

.method public blacklist decodeXWapInitiatorURI(I)Z
    .registers 2

    .line 703
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    move-result p0

    return p0
.end method

.method public greylist-max-r getContentParameters()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 742
    iget-object p0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mContentParameters:Ljava/util/HashMap;

    return-object p0
.end method

.method public greylist getDecodedDataLength()I
    .registers 1

    .line 711
    iget p0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    return p0
.end method

.method public greylist getValue32()J
    .registers 3

    .line 719
    iget-wide v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    return-wide v0
.end method

.method public greylist getValueString()Ljava/lang/String;
    .registers 1

    .line 727
    iget-object p0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    return-object p0
.end method

.method public greylist-max-r seekXWapApplicationId(II)Z
    .registers 6

    :goto_0
    const/4 v0, 0x0

    if-gt p1, p2, :cond_60

    .line 634
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeIntegerValue(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 635
    invoke-virtual {p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v1

    long-to-int v1, v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_1f

    const/4 p2, 0x1

    add-int/2addr p1, p2

    int-to-long v1, p1

    .line 638
    iput-wide v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    return p2

    .line 642
    :cond_18
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    move-result v1

    if-nez v1, :cond_1f

    return v0

    .line 644
    :cond_1f
    invoke-virtual {p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v1

    add-int/2addr p1, v1

    if-le p1, p2, :cond_27

    return v0

    .line 658
    :cond_27
    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    aget-byte v1, v1, p1

    if-ltz v1, :cond_35

    const/16 v2, 0x1e

    if-gt v1, v2, :cond_35

    add-int/lit8 v1, v1, 0x1

    add-int/2addr p1, v1

    goto :goto_0

    :cond_35
    const/16 v2, 0x1f

    if-ne v1, v2, :cond_4b

    add-int/lit8 p1, p1, 0x1

    if-lt p1, p2, :cond_3e

    return v0

    .line 664
    :cond_3e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v1

    if-nez v1, :cond_45

    return v0

    .line 665
    :cond_45
    invoke-virtual {p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v0

    :goto_49
    add-int/2addr p1, v0

    goto :goto_0

    :cond_4b
    if-ge v2, v1, :cond_5d

    const/16 v2, 0x7f

    if-gt v1, v2, :cond_5d

    .line 667
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    move-result v1

    if-nez v1, :cond_58

    return v0

    .line 668
    :cond_58
    invoke-virtual {p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v0
    :try_end_5c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_5c} :catch_60

    goto :goto_49

    :cond_5d
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_60
    :cond_60
    return v0
.end method
