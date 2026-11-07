.class public final enum Lcom/android/internal/telephony/cat/AppInterface$CommandType;
.super Ljava/lang/Enum;
.source "AppInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/AppInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CommandType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/cat/AppInterface$CommandType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist DISPLAY_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist GET_CHANNEL_STATUS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist GET_INKEY:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist GET_INPUT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist LANGUAGE_NOTIFICATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist LAUNCH_BROWSER:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist PLAY_TONE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist PROVIDE_LOCAL_INFORMATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist RECEIVE_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist REFRESH:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum blacklist RUN_AT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist SELECT_ITEM:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist SEND_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist SEND_DTMF:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist SEND_SMS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist SEND_SS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist SEND_USSD:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist SET_UP_CALL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist SET_UP_EVENT_LIST:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;


# instance fields
.field private blacklist mValue:I


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .registers 24

    .line 77
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_INKEY:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_INPUT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v4, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->LAUNCH_BROWSER:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v5, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PLAY_TONE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v6, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->REFRESH:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v7, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SELECT_ITEM:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v8, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_SS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v9, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_USSD:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v10, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_SMS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v11, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RUN_AT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v12, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DTMF:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v13, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v14, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v15, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v16, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v17, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PROVIDE_LOCAL_INFORMATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v18, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->LANGUAGE_NOTIFICATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v19, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v20, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v21, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RECEIVE_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v22, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v23, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_CHANNEL_STATUS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    filled-new-array/range {v1 .. v23}, [Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 9

    .line 80
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/4 v1, 0x0

    const/16 v2, 0x21

    const-string v3, "DISPLAY_TEXT"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 82
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v1, 0x22

    const-string v2, "GET_INKEY"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_INKEY:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 84
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/4 v1, 0x2

    const/16 v2, 0x23

    const-string v4, "GET_INPUT"

    invoke-direct {v0, v4, v1, v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_INPUT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 86
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string v1, "LAUNCH_BROWSER"

    const/4 v2, 0x3

    const/16 v4, 0x15

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->LAUNCH_BROWSER:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 88
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/4 v1, 0x4

    const/16 v2, 0x20

    const-string v5, "PLAY_TONE"

    invoke-direct {v0, v5, v1, v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PLAY_TONE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 90
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string v1, "REFRESH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->REFRESH:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 92
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/4 v1, 0x6

    const/16 v3, 0x24

    const-string v5, "SELECT_ITEM"

    invoke-direct {v0, v5, v1, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SELECT_ITEM:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 94
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string v1, "SEND_SS"

    const/4 v3, 0x7

    const/16 v5, 0x11

    invoke-direct {v0, v1, v3, v5}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_SS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 96
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string v1, "SEND_USSD"

    const/16 v3, 0x8

    const/16 v6, 0x12

    invoke-direct {v0, v1, v3, v6}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_USSD:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 98
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string v1, "SEND_SMS"

    const/16 v3, 0x9

    const/16 v7, 0x13

    invoke-direct {v0, v1, v3, v7}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_SMS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 100
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v1, 0xa

    const/16 v3, 0x34

    const-string v8, "RUN_AT"

    invoke-direct {v0, v8, v1, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RUN_AT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 101
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string v1, "SEND_DTMF"

    const/16 v3, 0xb

    const/16 v8, 0x14

    invoke-direct {v0, v1, v3, v8}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DTMF:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 103
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string v1, "SET_UP_EVENT_LIST"

    const/16 v3, 0xc

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 105
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v1, 0xd

    const/16 v2, 0x28

    const-string v3, "SET_UP_IDLE_MODE_TEXT"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 107
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v1, 0xe

    const/16 v2, 0x25

    const-string v3, "SET_UP_MENU"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 109
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string v1, "SET_UP_CALL"

    const/16 v2, 0xf

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 111
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string v1, "PROVIDE_LOCAL_INFORMATION"

    const/16 v2, 0x26

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PROVIDE_LOCAL_INFORMATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 113
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string v1, "LANGUAGE_NOTIFICATION"

    const/16 v2, 0x35

    invoke-direct {v0, v1, v5, v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->LANGUAGE_NOTIFICATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 115
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string v1, "OPEN_CHANNEL"

    const/16 v2, 0x40

    invoke-direct {v0, v1, v6, v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 117
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string v1, "CLOSE_CHANNEL"

    const/16 v2, 0x41

    invoke-direct {v0, v1, v7, v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 119
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string v1, "RECEIVE_DATA"

    const/16 v2, 0x42

    invoke-direct {v0, v1, v8, v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RECEIVE_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 121
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string v1, "SEND_DATA"

    const/16 v2, 0x43

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 123
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v1, 0x16

    const/16 v2, 0x44

    const-string v3, "GET_CHANNEL_STATUS"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_CHANNEL_STATUS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 77
    invoke-static {}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->$values()[Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->$VALUES:[Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 129
    iput p3, p0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->mValue:I

    return-void
.end method

.method public static greylist-max-r fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .registers 6

    .line 146
    invoke-static {}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->values()[Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 147
    iget v4, v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->mValue:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 77
    const-class v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    return-object p0
.end method

.method public static greylist values()[Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .registers 1

    .line 77
    sget-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->$VALUES:[Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/cat/AppInterface$CommandType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    return-object v0
.end method


# virtual methods
.method public blacklist value()I
    .registers 1

    .line 133
    iget p0, p0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->mValue:I

    return p0
.end method
