.class public final enum Lcom/android/internal/telephony/cat/ComprehensionTlvTag;
.super Ljava/lang/Enum;
.source "ComprehensionTlvTag.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/cat/ComprehensionTlvTag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum greylist ADDRESS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum greylist ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum blacklist BROWSER_TERMINATION_CAUSE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum greylist COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum blacklist DEFAULT_TEXT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum greylist DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum blacklist DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum blacklist EVENT_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum blacklist FILE_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum blacklist HELP_REQUEST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum greylist ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum blacklist IMMEDIATE_RESPONSE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum blacklist ITEM:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum blacklist ITEM_ICON_ID_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum blacklist ITEM_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum blacklist LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum blacklist RESPONSE_LENGTH:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum greylist RESULT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum greylist SMS_TPDU:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum greylist TEXT_ATTRIBUTE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum greylist TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum blacklist TONE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum blacklist URL:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum greylist USSD_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;


# instance fields
.field private blacklist mValue:I


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/cat/ComprehensionTlvTag;
    .registers 25

    .line 28
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->RESULT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ADDRESS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->USSD_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    sget-object v8, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->SMS_TPDU:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    sget-object v9, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    sget-object v10, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TONE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    sget-object v11, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    sget-object v12, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    sget-object v13, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->RESPONSE_LENGTH:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    sget-object v14, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->FILE_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    sget-object v15, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->HELP_REQUEST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    sget-object v16, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEFAULT_TEXT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    sget-object v17, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    sget-object v18, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    sget-object v19, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ICON_ID_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    sget-object v20, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->IMMEDIATE_RESPONSE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    sget-object v21, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    sget-object v22, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->URL:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    sget-object v23, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BROWSER_TERMINATION_CAUSE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    sget-object v24, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_ATTRIBUTE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    filled-new-array/range {v1 .. v24}, [Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 8

    .line 29
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string v1, "COMMAND_DETAILS"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 31
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string v1, "DEVICE_IDENTITIES"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 33
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string v1, "RESULT"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->RESULT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 35
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string v1, "DURATION"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 36
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string v1, "ALPHA_ID"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 38
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string v1, "ADDRESS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ADDRESS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 40
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string v1, "USSD_STRING"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->USSD_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 42
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string v1, "SMS_TPDU"

    const/4 v2, 0x7

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->SMS_TPDU:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 44
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string v1, "TEXT_STRING"

    const/16 v2, 0x8

    const/16 v5, 0xd

    invoke-direct {v0, v1, v2, v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 46
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string v1, "TONE"

    const/16 v2, 0x9

    const/16 v6, 0xe

    invoke-direct {v0, v1, v2, v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TONE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 47
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string v1, "ITEM"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 48
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string v1, "ITEM_ID"

    const/16 v3, 0x10

    invoke-direct {v0, v1, v4, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 49
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string v1, "RESPONSE_LENGTH"

    const/16 v4, 0xc

    const/16 v7, 0x11

    invoke-direct {v0, v1, v4, v7}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->RESPONSE_LENGTH:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 50
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string v1, "FILE_LIST"

    const/16 v4, 0x12

    invoke-direct {v0, v1, v5, v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->FILE_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 51
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string v1, "HELP_REQUEST"

    const/16 v5, 0x15

    invoke-direct {v0, v1, v6, v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->HELP_REQUEST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 52
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string v1, "DEFAULT_TEXT"

    const/16 v6, 0x17

    invoke-direct {v0, v1, v2, v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEFAULT_TEXT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 53
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string v1, "EVENT_LIST"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 54
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string v1, "ICON_ID"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v7, v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 56
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string v1, "ITEM_ICON_ID_LIST"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ICON_ID_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 57
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const/16 v1, 0x13

    const/16 v2, 0x2b

    const-string v3, "IMMEDIATE_RESPONSE"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->IMMEDIATE_RESPONSE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 58
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const/16 v1, 0x14

    const/16 v2, 0x2d

    const-string v3, "LANGUAGE"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 59
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string v1, "URL"

    const/16 v2, 0x31

    invoke-direct {v0, v1, v5, v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->URL:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 60
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const/16 v1, 0x16

    const/16 v2, 0x34

    const-string v3, "BROWSER_TERMINATION_CAUSE"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BROWSER_TERMINATION_CAUSE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 61
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string v1, "TEXT_ATTRIBUTE"

    const/16 v2, 0x50

    invoke-direct {v0, v1, v6, v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_ATTRIBUTE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 28
    invoke-static {}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->$values()[Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->$VALUES:[Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

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

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    iput p3, p0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->mValue:I

    return-void
.end method

.method public static blacklist fromInt(I)Lcom/android/internal/telephony/cat/ComprehensionTlvTag;
    .registers 6

    .line 81
    invoke-static {}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->values()[Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 82
    iget v4, v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->mValue:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/ComprehensionTlvTag;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 28
    const-class v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/cat/ComprehensionTlvTag;
    .registers 1

    .line 28
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->$VALUES:[Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    return-object v0
.end method


# virtual methods
.method public greylist-max-r value()I
    .registers 1

    .line 77
    iget p0, p0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->mValue:I

    return p0
.end method
