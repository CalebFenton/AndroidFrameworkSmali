.class public final enum Lsun/net/ftp/FtpReplyCode;
.super Ljava/lang/Enum;
.source "FtpReplyCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsun/net/ftp/FtpReplyCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsun/net/ftp/FtpReplyCode;

.field public static final enum ACTION_ABORTED:Lsun/net/ftp/FtpReplyCode;

.field public static final enum BAD_SEQUENCE:Lsun/net/ftp/FtpReplyCode;

.field public static final enum CANT_OPEN_DATA_CONNECTION:Lsun/net/ftp/FtpReplyCode;

.field public static final enum CLOSING_DATA_CONNECTION:Lsun/net/ftp/FtpReplyCode;

.field public static final enum COMMAND_OK:Lsun/net/ftp/FtpReplyCode;

.field public static final enum COMMAND_UNRECOGNIZED:Lsun/net/ftp/FtpReplyCode;

.field public static final enum CONNECTION_CLOSED:Lsun/net/ftp/FtpReplyCode;

.field public static final enum DATA_CONNECTION_ALREADY_OPEN:Lsun/net/ftp/FtpReplyCode;

.field public static final enum DATA_CONNECTION_OPEN:Lsun/net/ftp/FtpReplyCode;

.field public static final enum DIRECTORY_STATUS:Lsun/net/ftp/FtpReplyCode;

.field public static final enum ENTERING_EXT_PASSIVE_MODE:Lsun/net/ftp/FtpReplyCode;

.field public static final enum ENTERING_PASSIVE_MODE:Lsun/net/ftp/FtpReplyCode;

.field public static final enum EXCEEDED_STORAGE:Lsun/net/ftp/FtpReplyCode;

.field public static final enum FAILED_SECURITY_CHECK:Lsun/net/ftp/FtpReplyCode;

.field public static final enum FILE_ACTION_NOT_TAKEN:Lsun/net/ftp/FtpReplyCode;

.field public static final enum FILE_ACTION_OK:Lsun/net/ftp/FtpReplyCode;

.field public static final enum FILE_ACTION_PENDING:Lsun/net/ftp/FtpReplyCode;

.field public static final enum FILE_NAME_NOT_ALLOWED:Lsun/net/ftp/FtpReplyCode;

.field public static final enum FILE_STATUS:Lsun/net/ftp/FtpReplyCode;

.field public static final enum FILE_STATUS_OK:Lsun/net/ftp/FtpReplyCode;

.field public static final enum FILE_UNAVAILABLE:Lsun/net/ftp/FtpReplyCode;

.field public static final enum HELP_MESSAGE:Lsun/net/ftp/FtpReplyCode;

.field public static final enum INSUFFICIENT_STORAGE:Lsun/net/ftp/FtpReplyCode;

.field public static final enum INVALID_PARAMETER:Lsun/net/ftp/FtpReplyCode;

.field public static final enum LOGGED_IN:Lsun/net/ftp/FtpReplyCode;

.field public static final enum NAME_SYSTEM_TYPE:Lsun/net/ftp/FtpReplyCode;

.field public static final enum NEED_ACCOUNT:Lsun/net/ftp/FtpReplyCode;

.field public static final enum NEED_ACCOUNT_FOR_STORING:Lsun/net/ftp/FtpReplyCode;

.field public static final enum NEED_ADAT:Lsun/net/ftp/FtpReplyCode;

.field public static final enum NEED_MORE_ADAT:Lsun/net/ftp/FtpReplyCode;

.field public static final enum NEED_PASSWORD:Lsun/net/ftp/FtpReplyCode;

.field public static final enum NEED_SECURITY_RESOURCE:Lsun/net/ftp/FtpReplyCode;

.field public static final enum NOT_IMPLEMENTED:Lsun/net/ftp/FtpReplyCode;

.field public static final enum NOT_IMPLEMENTED_FOR_PARAMETER:Lsun/net/ftp/FtpReplyCode;

.field public static final enum NOT_LOGGED_IN:Lsun/net/ftp/FtpReplyCode;

.field public static final enum PAGE_TYPE_UNKNOWN:Lsun/net/ftp/FtpReplyCode;

.field public static final enum PATHNAME_CREATED:Lsun/net/ftp/FtpReplyCode;

.field public static final enum PROTECTED_REPLY:Lsun/net/ftp/FtpReplyCode;

.field public static final enum PROT_LEVEL_DENIED:Lsun/net/ftp/FtpReplyCode;

.field public static final enum PROT_LEVEL_NOT_SUPPORTED_BY_SECURITY:Lsun/net/ftp/FtpReplyCode;

.field public static final enum REQUEST_DENIED:Lsun/net/ftp/FtpReplyCode;

.field public static final enum RESTART_MARKER:Lsun/net/ftp/FtpReplyCode;

.field public static final enum SECURELY_LOGGED_IN:Lsun/net/ftp/FtpReplyCode;

.field public static final enum SECURITY_EXCHANGE_COMPLETE:Lsun/net/ftp/FtpReplyCode;

.field public static final enum SECURITY_EXCHANGE_OK:Lsun/net/ftp/FtpReplyCode;

.field public static final enum SERVICE_CLOSING:Lsun/net/ftp/FtpReplyCode;

.field public static final enum SERVICE_NOT_AVAILABLE:Lsun/net/ftp/FtpReplyCode;

.field public static final enum SERVICE_READY:Lsun/net/ftp/FtpReplyCode;

.field public static final enum SERVICE_READY_IN:Lsun/net/ftp/FtpReplyCode;

.field public static final enum SYSTEM_STATUS:Lsun/net/ftp/FtpReplyCode;

.field public static final enum UNKNOWN_ERROR:Lsun/net/ftp/FtpReplyCode;

.field public static final enum UNSUPPORTED_PROT_LEVEL:Lsun/net/ftp/FtpReplyCode;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x4

    #@1
    const/4 v7, 0x3

    #@2
    const/4 v6, 0x2

    #@3
    const/4 v5, 0x1

    #@4
    const/4 v4, 0x0

    #@5
    .line 35
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@7
    const-string/jumbo v1, "RESTART_MARKER"

    #@a
    const/16 v2, 0x6e

    #@c
    invoke-direct {v0, v1, v4, v2}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@f
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->RESTART_MARKER:Lsun/net/ftp/FtpReplyCode;

    #@11
    .line 36
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@13
    const-string/jumbo v1, "SERVICE_READY_IN"

    #@16
    const/16 v2, 0x78

    #@18
    invoke-direct {v0, v1, v5, v2}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@1b
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->SERVICE_READY_IN:Lsun/net/ftp/FtpReplyCode;

    #@1d
    .line 37
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@1f
    const-string/jumbo v1, "DATA_CONNECTION_ALREADY_OPEN"

    #@22
    const/16 v2, 0x7d

    #@24
    invoke-direct {v0, v1, v6, v2}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@27
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->DATA_CONNECTION_ALREADY_OPEN:Lsun/net/ftp/FtpReplyCode;

    #@29
    .line 38
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@2b
    const-string/jumbo v1, "FILE_STATUS_OK"

    #@2e
    const/16 v2, 0x96

    #@30
    invoke-direct {v0, v1, v7, v2}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@33
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->FILE_STATUS_OK:Lsun/net/ftp/FtpReplyCode;

    #@35
    .line 39
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@37
    const-string/jumbo v1, "COMMAND_OK"

    #@3a
    const/16 v2, 0xc8

    #@3c
    invoke-direct {v0, v1, v8, v2}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@3f
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->COMMAND_OK:Lsun/net/ftp/FtpReplyCode;

    #@41
    .line 40
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@43
    const-string/jumbo v1, "NOT_IMPLEMENTED"

    #@46
    const/4 v2, 0x5

    #@47
    const/16 v3, 0xca

    #@49
    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@4c
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->NOT_IMPLEMENTED:Lsun/net/ftp/FtpReplyCode;

    #@4e
    .line 41
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@50
    const-string/jumbo v1, "SYSTEM_STATUS"

    #@53
    const/4 v2, 0x6

    #@54
    const/16 v3, 0xd3

    #@56
    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@59
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->SYSTEM_STATUS:Lsun/net/ftp/FtpReplyCode;

    #@5b
    .line 42
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@5d
    const-string/jumbo v1, "DIRECTORY_STATUS"

    #@60
    const/4 v2, 0x7

    #@61
    const/16 v3, 0xd4

    #@63
    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@66
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->DIRECTORY_STATUS:Lsun/net/ftp/FtpReplyCode;

    #@68
    .line 43
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@6a
    const-string/jumbo v1, "FILE_STATUS"

    #@6d
    const/16 v2, 0x8

    #@6f
    const/16 v3, 0xd5

    #@71
    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@74
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->FILE_STATUS:Lsun/net/ftp/FtpReplyCode;

    #@76
    .line 44
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@78
    const-string/jumbo v1, "HELP_MESSAGE"

    #@7b
    const/16 v2, 0x9

    #@7d
    const/16 v3, 0xd6

    #@7f
    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@82
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->HELP_MESSAGE:Lsun/net/ftp/FtpReplyCode;

    #@84
    .line 45
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@86
    const-string/jumbo v1, "NAME_SYSTEM_TYPE"

    #@89
    const/16 v2, 0xa

    #@8b
    const/16 v3, 0xd7

    #@8d
    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@90
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->NAME_SYSTEM_TYPE:Lsun/net/ftp/FtpReplyCode;

    #@92
    .line 46
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@94
    const-string/jumbo v1, "SERVICE_READY"

    #@97
    const/16 v2, 0xb

    #@99
    const/16 v3, 0xdc

    #@9b
    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@9e
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->SERVICE_READY:Lsun/net/ftp/FtpReplyCode;

    #@a0
    .line 47
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@a2
    const-string/jumbo v1, "SERVICE_CLOSING"

    #@a5
    const/16 v2, 0xc

    #@a7
    const/16 v3, 0xdd

    #@a9
    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@ac
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->SERVICE_CLOSING:Lsun/net/ftp/FtpReplyCode;

    #@ae
    .line 48
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@b0
    const-string/jumbo v1, "DATA_CONNECTION_OPEN"

    #@b3
    const/16 v2, 0xd

    #@b5
    const/16 v3, 0xe1

    #@b7
    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@ba
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->DATA_CONNECTION_OPEN:Lsun/net/ftp/FtpReplyCode;

    #@bc
    .line 49
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@be
    const-string/jumbo v1, "CLOSING_DATA_CONNECTION"

    #@c1
    const/16 v2, 0xe

    #@c3
    const/16 v3, 0xe2

    #@c5
    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@c8
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->CLOSING_DATA_CONNECTION:Lsun/net/ftp/FtpReplyCode;

    #@ca
    .line 50
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@cc
    const-string/jumbo v1, "ENTERING_PASSIVE_MODE"

    #@cf
    const/16 v2, 0xf

    #@d1
    const/16 v3, 0xe3

    #@d3
    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@d6
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->ENTERING_PASSIVE_MODE:Lsun/net/ftp/FtpReplyCode;

    #@d8
    .line 51
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@da
    const-string/jumbo v1, "ENTERING_EXT_PASSIVE_MODE"

    #@dd
    const/16 v2, 0x10

    #@df
    const/16 v3, 0xe5

    #@e1
    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@e4
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->ENTERING_EXT_PASSIVE_MODE:Lsun/net/ftp/FtpReplyCode;

    #@e6
    .line 52
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@e8
    const-string/jumbo v1, "LOGGED_IN"

    #@eb
    const/16 v2, 0x11

    #@ed
    const/16 v3, 0xe6

    #@ef
    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@f2
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->LOGGED_IN:Lsun/net/ftp/FtpReplyCode;

    #@f4
    .line 53
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@f6
    const-string/jumbo v1, "SECURELY_LOGGED_IN"

    #@f9
    const/16 v2, 0x12

    #@fb
    const/16 v3, 0xe8

    #@fd
    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@100
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->SECURELY_LOGGED_IN:Lsun/net/ftp/FtpReplyCode;

    #@102
    .line 54
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@104
    const-string/jumbo v1, "SECURITY_EXCHANGE_OK"

    #@107
    const/16 v2, 0x13

    #@109
    const/16 v3, 0xea

    #@10b
    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@10e
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->SECURITY_EXCHANGE_OK:Lsun/net/ftp/FtpReplyCode;

    #@110
    .line 55
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@112
    const-string/jumbo v1, "SECURITY_EXCHANGE_COMPLETE"

    #@115
    const/16 v2, 0x14

    #@117
    const/16 v3, 0xeb

    #@119
    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@11c
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->SECURITY_EXCHANGE_COMPLETE:Lsun/net/ftp/FtpReplyCode;

    #@11e
    .line 56
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@120
    const-string/jumbo v1, "FILE_ACTION_OK"

    #@123
    const/16 v2, 0x15

    #@125
    const/16 v3, 0xfa

    #@127
    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@12a
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->FILE_ACTION_OK:Lsun/net/ftp/FtpReplyCode;

    #@12c
    .line 57
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@12e
    const-string/jumbo v1, "PATHNAME_CREATED"

    #@131
    const/16 v2, 0x16

    #@133
    const/16 v3, 0x101

    #@135
    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@138
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->PATHNAME_CREATED:Lsun/net/ftp/FtpReplyCode;

    #@13a
    .line 58
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@13c
    const-string/jumbo v1, "NEED_PASSWORD"

    #@13f
    const/16 v2, 0x17

    #@141
    const/16 v3, 0x14b

    #@143
    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@146
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->NEED_PASSWORD:Lsun/net/ftp/FtpReplyCode;

    #@148
    .line 59
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@14a
    const-string/jumbo v1, "NEED_ACCOUNT"

    #@14d
    const/16 v2, 0x18

    #@14f
    const/16 v3, 0x14c

    #@151
    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@154
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->NEED_ACCOUNT:Lsun/net/ftp/FtpReplyCode;

    #@156
    .line 60
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@158
    const-string/jumbo v1, "NEED_ADAT"

    #@15b
    const/16 v2, 0x19

    #@15d
    const/16 v3, 0x14e

    #@15f
    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@162
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->NEED_ADAT:Lsun/net/ftp/FtpReplyCode;

    #@164
    .line 61
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@166
    const-string/jumbo v1, "NEED_MORE_ADAT"

    #@169
    const/16 v2, 0x1a

    #@16b
    const/16 v3, 0x14f

    #@16d
    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@170
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->NEED_MORE_ADAT:Lsun/net/ftp/FtpReplyCode;

    #@172
    .line 62
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@174
    const-string/jumbo v1, "FILE_ACTION_PENDING"

    #@177
    const/16 v2, 0x1b

    #@179
    const/16 v3, 0x15e

    #@17b
    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@17e
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->FILE_ACTION_PENDING:Lsun/net/ftp/FtpReplyCode;

    #@180
    .line 63
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@182
    const-string/jumbo v1, "SERVICE_NOT_AVAILABLE"

    #@185
    const/16 v2, 0x1c

    #@187
    const/16 v3, 0x1a5

    #@189
    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@18c
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->SERVICE_NOT_AVAILABLE:Lsun/net/ftp/FtpReplyCode;

    #@18e
    .line 64
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@190
    const-string/jumbo v1, "CANT_OPEN_DATA_CONNECTION"

    #@193
    const/16 v2, 0x1d

    #@195
    const/16 v3, 0x1a9

    #@197
    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@19a
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->CANT_OPEN_DATA_CONNECTION:Lsun/net/ftp/FtpReplyCode;

    #@19c
    .line 65
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@19e
    const-string/jumbo v1, "CONNECTION_CLOSED"

    #@1a1
    const/16 v2, 0x1e

    #@1a3
    const/16 v3, 0x1aa

    #@1a5
    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@1a8
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->CONNECTION_CLOSED:Lsun/net/ftp/FtpReplyCode;

    #@1aa
    .line 66
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@1ac
    const-string/jumbo v1, "NEED_SECURITY_RESOURCE"

    #@1af
    const/16 v2, 0x1f

    #@1b1
    const/16 v3, 0x1af

    #@1b3
    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@1b6
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->NEED_SECURITY_RESOURCE:Lsun/net/ftp/FtpReplyCode;

    #@1b8
    .line 67
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@1ba
    const-string/jumbo v1, "FILE_ACTION_NOT_TAKEN"

    #@1bd
    const/16 v2, 0x20

    #@1bf
    const/16 v3, 0x1c2

    #@1c1
    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@1c4
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->FILE_ACTION_NOT_TAKEN:Lsun/net/ftp/FtpReplyCode;

    #@1c6
    .line 68
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@1c8
    const-string/jumbo v1, "ACTION_ABORTED"

    #@1cb
    const/16 v2, 0x21

    #@1cd
    const/16 v3, 0x1c3

    #@1cf
    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@1d2
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->ACTION_ABORTED:Lsun/net/ftp/FtpReplyCode;

    #@1d4
    .line 69
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@1d6
    const-string/jumbo v1, "INSUFFICIENT_STORAGE"

    #@1d9
    const/16 v2, 0x22

    #@1db
    const/16 v3, 0x1c4

    #@1dd
    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@1e0
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->INSUFFICIENT_STORAGE:Lsun/net/ftp/FtpReplyCode;

    #@1e2
    .line 70
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@1e4
    const-string/jumbo v1, "COMMAND_UNRECOGNIZED"

    #@1e7
    const/16 v2, 0x23

    #@1e9
    const/16 v3, 0x1f4

    #@1eb
    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@1ee
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->COMMAND_UNRECOGNIZED:Lsun/net/ftp/FtpReplyCode;

    #@1f0
    .line 71
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@1f2
    const-string/jumbo v1, "INVALID_PARAMETER"

    #@1f5
    const/16 v2, 0x24

    #@1f7
    const/16 v3, 0x1f5

    #@1f9
    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@1fc
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->INVALID_PARAMETER:Lsun/net/ftp/FtpReplyCode;

    #@1fe
    .line 72
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@200
    const-string/jumbo v1, "BAD_SEQUENCE"

    #@203
    const/16 v2, 0x25

    #@205
    const/16 v3, 0x1f7

    #@207
    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@20a
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->BAD_SEQUENCE:Lsun/net/ftp/FtpReplyCode;

    #@20c
    .line 73
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@20e
    const-string/jumbo v1, "NOT_IMPLEMENTED_FOR_PARAMETER"

    #@211
    const/16 v2, 0x26

    #@213
    const/16 v3, 0x1f8

    #@215
    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@218
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->NOT_IMPLEMENTED_FOR_PARAMETER:Lsun/net/ftp/FtpReplyCode;

    #@21a
    .line 74
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@21c
    const-string/jumbo v1, "NOT_LOGGED_IN"

    #@21f
    const/16 v2, 0x27

    #@221
    const/16 v3, 0x212

    #@223
    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@226
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->NOT_LOGGED_IN:Lsun/net/ftp/FtpReplyCode;

    #@228
    .line 75
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@22a
    const-string/jumbo v1, "NEED_ACCOUNT_FOR_STORING"

    #@22d
    const/16 v2, 0x28

    #@22f
    const/16 v3, 0x214

    #@231
    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@234
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->NEED_ACCOUNT_FOR_STORING:Lsun/net/ftp/FtpReplyCode;

    #@236
    .line 76
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@238
    const-string/jumbo v1, "PROT_LEVEL_DENIED"

    #@23b
    const/16 v2, 0x29

    #@23d
    const/16 v3, 0x215

    #@23f
    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@242
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->PROT_LEVEL_DENIED:Lsun/net/ftp/FtpReplyCode;

    #@244
    .line 77
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@246
    const-string/jumbo v1, "REQUEST_DENIED"

    #@249
    const/16 v2, 0x2a

    #@24b
    const/16 v3, 0x216

    #@24d
    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@250
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->REQUEST_DENIED:Lsun/net/ftp/FtpReplyCode;

    #@252
    .line 78
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@254
    const-string/jumbo v1, "FAILED_SECURITY_CHECK"

    #@257
    const/16 v2, 0x2b

    #@259
    const/16 v3, 0x217

    #@25b
    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@25e
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->FAILED_SECURITY_CHECK:Lsun/net/ftp/FtpReplyCode;

    #@260
    .line 79
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@262
    const-string/jumbo v1, "UNSUPPORTED_PROT_LEVEL"

    #@265
    const/16 v2, 0x2c

    #@267
    const/16 v3, 0x218

    #@269
    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@26c
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->UNSUPPORTED_PROT_LEVEL:Lsun/net/ftp/FtpReplyCode;

    #@26e
    .line 80
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@270
    const-string/jumbo v1, "PROT_LEVEL_NOT_SUPPORTED_BY_SECURITY"

    #@273
    const/16 v2, 0x2d

    #@275
    const/16 v3, 0x219

    #@277
    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@27a
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->PROT_LEVEL_NOT_SUPPORTED_BY_SECURITY:Lsun/net/ftp/FtpReplyCode;

    #@27c
    .line 81
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@27e
    const-string/jumbo v1, "FILE_UNAVAILABLE"

    #@281
    const/16 v2, 0x2e

    #@283
    const/16 v3, 0x226

    #@285
    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@288
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->FILE_UNAVAILABLE:Lsun/net/ftp/FtpReplyCode;

    #@28a
    .line 82
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@28c
    const-string/jumbo v1, "PAGE_TYPE_UNKNOWN"

    #@28f
    const/16 v2, 0x2f

    #@291
    const/16 v3, 0x227

    #@293
    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@296
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->PAGE_TYPE_UNKNOWN:Lsun/net/ftp/FtpReplyCode;

    #@298
    .line 83
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@29a
    const-string/jumbo v1, "EXCEEDED_STORAGE"

    #@29d
    const/16 v2, 0x30

    #@29f
    const/16 v3, 0x228

    #@2a1
    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@2a4
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->EXCEEDED_STORAGE:Lsun/net/ftp/FtpReplyCode;

    #@2a6
    .line 84
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@2a8
    const-string/jumbo v1, "FILE_NAME_NOT_ALLOWED"

    #@2ab
    const/16 v2, 0x31

    #@2ad
    const/16 v3, 0x229

    #@2af
    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@2b2
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->FILE_NAME_NOT_ALLOWED:Lsun/net/ftp/FtpReplyCode;

    #@2b4
    .line 85
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@2b6
    const-string/jumbo v1, "PROTECTED_REPLY"

    #@2b9
    const/16 v2, 0x32

    #@2bb
    const/16 v3, 0x277

    #@2bd
    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@2c0
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->PROTECTED_REPLY:Lsun/net/ftp/FtpReplyCode;

    #@2c2
    .line 86
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    #@2c4
    const-string/jumbo v1, "UNKNOWN_ERROR"

    #@2c7
    const/16 v2, 0x33

    #@2c9
    const/16 v3, 0x3e7

    #@2cb
    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    #@2ce
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->UNKNOWN_ERROR:Lsun/net/ftp/FtpReplyCode;

    #@2d0
    .line 33
    const/16 v0, 0x34

    #@2d2
    new-array v0, v0, [Lsun/net/ftp/FtpReplyCode;

    #@2d4
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->RESTART_MARKER:Lsun/net/ftp/FtpReplyCode;

    #@2d6
    aput-object v1, v0, v4

    #@2d8
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->SERVICE_READY_IN:Lsun/net/ftp/FtpReplyCode;

    #@2da
    aput-object v1, v0, v5

    #@2dc
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->DATA_CONNECTION_ALREADY_OPEN:Lsun/net/ftp/FtpReplyCode;

    #@2de
    aput-object v1, v0, v6

    #@2e0
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->FILE_STATUS_OK:Lsun/net/ftp/FtpReplyCode;

    #@2e2
    aput-object v1, v0, v7

    #@2e4
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->COMMAND_OK:Lsun/net/ftp/FtpReplyCode;

    #@2e6
    aput-object v1, v0, v8

    #@2e8
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->NOT_IMPLEMENTED:Lsun/net/ftp/FtpReplyCode;

    #@2ea
    const/4 v2, 0x5

    #@2eb
    aput-object v1, v0, v2

    #@2ed
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->SYSTEM_STATUS:Lsun/net/ftp/FtpReplyCode;

    #@2ef
    const/4 v2, 0x6

    #@2f0
    aput-object v1, v0, v2

    #@2f2
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->DIRECTORY_STATUS:Lsun/net/ftp/FtpReplyCode;

    #@2f4
    const/4 v2, 0x7

    #@2f5
    aput-object v1, v0, v2

    #@2f7
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->FILE_STATUS:Lsun/net/ftp/FtpReplyCode;

    #@2f9
    const/16 v2, 0x8

    #@2fb
    aput-object v1, v0, v2

    #@2fd
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->HELP_MESSAGE:Lsun/net/ftp/FtpReplyCode;

    #@2ff
    const/16 v2, 0x9

    #@301
    aput-object v1, v0, v2

    #@303
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->NAME_SYSTEM_TYPE:Lsun/net/ftp/FtpReplyCode;

    #@305
    const/16 v2, 0xa

    #@307
    aput-object v1, v0, v2

    #@309
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->SERVICE_READY:Lsun/net/ftp/FtpReplyCode;

    #@30b
    const/16 v2, 0xb

    #@30d
    aput-object v1, v0, v2

    #@30f
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->SERVICE_CLOSING:Lsun/net/ftp/FtpReplyCode;

    #@311
    const/16 v2, 0xc

    #@313
    aput-object v1, v0, v2

    #@315
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->DATA_CONNECTION_OPEN:Lsun/net/ftp/FtpReplyCode;

    #@317
    const/16 v2, 0xd

    #@319
    aput-object v1, v0, v2

    #@31b
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->CLOSING_DATA_CONNECTION:Lsun/net/ftp/FtpReplyCode;

    #@31d
    const/16 v2, 0xe

    #@31f
    aput-object v1, v0, v2

    #@321
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->ENTERING_PASSIVE_MODE:Lsun/net/ftp/FtpReplyCode;

    #@323
    const/16 v2, 0xf

    #@325
    aput-object v1, v0, v2

    #@327
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->ENTERING_EXT_PASSIVE_MODE:Lsun/net/ftp/FtpReplyCode;

    #@329
    const/16 v2, 0x10

    #@32b
    aput-object v1, v0, v2

    #@32d
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->LOGGED_IN:Lsun/net/ftp/FtpReplyCode;

    #@32f
    const/16 v2, 0x11

    #@331
    aput-object v1, v0, v2

    #@333
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->SECURELY_LOGGED_IN:Lsun/net/ftp/FtpReplyCode;

    #@335
    const/16 v2, 0x12

    #@337
    aput-object v1, v0, v2

    #@339
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->SECURITY_EXCHANGE_OK:Lsun/net/ftp/FtpReplyCode;

    #@33b
    const/16 v2, 0x13

    #@33d
    aput-object v1, v0, v2

    #@33f
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->SECURITY_EXCHANGE_COMPLETE:Lsun/net/ftp/FtpReplyCode;

    #@341
    const/16 v2, 0x14

    #@343
    aput-object v1, v0, v2

    #@345
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->FILE_ACTION_OK:Lsun/net/ftp/FtpReplyCode;

    #@347
    const/16 v2, 0x15

    #@349
    aput-object v1, v0, v2

    #@34b
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->PATHNAME_CREATED:Lsun/net/ftp/FtpReplyCode;

    #@34d
    const/16 v2, 0x16

    #@34f
    aput-object v1, v0, v2

    #@351
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->NEED_PASSWORD:Lsun/net/ftp/FtpReplyCode;

    #@353
    const/16 v2, 0x17

    #@355
    aput-object v1, v0, v2

    #@357
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->NEED_ACCOUNT:Lsun/net/ftp/FtpReplyCode;

    #@359
    const/16 v2, 0x18

    #@35b
    aput-object v1, v0, v2

    #@35d
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->NEED_ADAT:Lsun/net/ftp/FtpReplyCode;

    #@35f
    const/16 v2, 0x19

    #@361
    aput-object v1, v0, v2

    #@363
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->NEED_MORE_ADAT:Lsun/net/ftp/FtpReplyCode;

    #@365
    const/16 v2, 0x1a

    #@367
    aput-object v1, v0, v2

    #@369
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->FILE_ACTION_PENDING:Lsun/net/ftp/FtpReplyCode;

    #@36b
    const/16 v2, 0x1b

    #@36d
    aput-object v1, v0, v2

    #@36f
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->SERVICE_NOT_AVAILABLE:Lsun/net/ftp/FtpReplyCode;

    #@371
    const/16 v2, 0x1c

    #@373
    aput-object v1, v0, v2

    #@375
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->CANT_OPEN_DATA_CONNECTION:Lsun/net/ftp/FtpReplyCode;

    #@377
    const/16 v2, 0x1d

    #@379
    aput-object v1, v0, v2

    #@37b
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->CONNECTION_CLOSED:Lsun/net/ftp/FtpReplyCode;

    #@37d
    const/16 v2, 0x1e

    #@37f
    aput-object v1, v0, v2

    #@381
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->NEED_SECURITY_RESOURCE:Lsun/net/ftp/FtpReplyCode;

    #@383
    const/16 v2, 0x1f

    #@385
    aput-object v1, v0, v2

    #@387
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->FILE_ACTION_NOT_TAKEN:Lsun/net/ftp/FtpReplyCode;

    #@389
    const/16 v2, 0x20

    #@38b
    aput-object v1, v0, v2

    #@38d
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->ACTION_ABORTED:Lsun/net/ftp/FtpReplyCode;

    #@38f
    const/16 v2, 0x21

    #@391
    aput-object v1, v0, v2

    #@393
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->INSUFFICIENT_STORAGE:Lsun/net/ftp/FtpReplyCode;

    #@395
    const/16 v2, 0x22

    #@397
    aput-object v1, v0, v2

    #@399
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->COMMAND_UNRECOGNIZED:Lsun/net/ftp/FtpReplyCode;

    #@39b
    const/16 v2, 0x23

    #@39d
    aput-object v1, v0, v2

    #@39f
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->INVALID_PARAMETER:Lsun/net/ftp/FtpReplyCode;

    #@3a1
    const/16 v2, 0x24

    #@3a3
    aput-object v1, v0, v2

    #@3a5
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->BAD_SEQUENCE:Lsun/net/ftp/FtpReplyCode;

    #@3a7
    const/16 v2, 0x25

    #@3a9
    aput-object v1, v0, v2

    #@3ab
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->NOT_IMPLEMENTED_FOR_PARAMETER:Lsun/net/ftp/FtpReplyCode;

    #@3ad
    const/16 v2, 0x26

    #@3af
    aput-object v1, v0, v2

    #@3b1
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->NOT_LOGGED_IN:Lsun/net/ftp/FtpReplyCode;

    #@3b3
    const/16 v2, 0x27

    #@3b5
    aput-object v1, v0, v2

    #@3b7
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->NEED_ACCOUNT_FOR_STORING:Lsun/net/ftp/FtpReplyCode;

    #@3b9
    const/16 v2, 0x28

    #@3bb
    aput-object v1, v0, v2

    #@3bd
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->PROT_LEVEL_DENIED:Lsun/net/ftp/FtpReplyCode;

    #@3bf
    const/16 v2, 0x29

    #@3c1
    aput-object v1, v0, v2

    #@3c3
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->REQUEST_DENIED:Lsun/net/ftp/FtpReplyCode;

    #@3c5
    const/16 v2, 0x2a

    #@3c7
    aput-object v1, v0, v2

    #@3c9
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->FAILED_SECURITY_CHECK:Lsun/net/ftp/FtpReplyCode;

    #@3cb
    const/16 v2, 0x2b

    #@3cd
    aput-object v1, v0, v2

    #@3cf
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->UNSUPPORTED_PROT_LEVEL:Lsun/net/ftp/FtpReplyCode;

    #@3d1
    const/16 v2, 0x2c

    #@3d3
    aput-object v1, v0, v2

    #@3d5
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->PROT_LEVEL_NOT_SUPPORTED_BY_SECURITY:Lsun/net/ftp/FtpReplyCode;

    #@3d7
    const/16 v2, 0x2d

    #@3d9
    aput-object v1, v0, v2

    #@3db
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->FILE_UNAVAILABLE:Lsun/net/ftp/FtpReplyCode;

    #@3dd
    const/16 v2, 0x2e

    #@3df
    aput-object v1, v0, v2

    #@3e1
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->PAGE_TYPE_UNKNOWN:Lsun/net/ftp/FtpReplyCode;

    #@3e3
    const/16 v2, 0x2f

    #@3e5
    aput-object v1, v0, v2

    #@3e7
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->EXCEEDED_STORAGE:Lsun/net/ftp/FtpReplyCode;

    #@3e9
    const/16 v2, 0x30

    #@3eb
    aput-object v1, v0, v2

    #@3ed
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->FILE_NAME_NOT_ALLOWED:Lsun/net/ftp/FtpReplyCode;

    #@3ef
    const/16 v2, 0x31

    #@3f1
    aput-object v1, v0, v2

    #@3f3
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->PROTECTED_REPLY:Lsun/net/ftp/FtpReplyCode;

    #@3f5
    const/16 v2, 0x32

    #@3f7
    aput-object v1, v0, v2

    #@3f9
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->UNKNOWN_ERROR:Lsun/net/ftp/FtpReplyCode;

    #@3fb
    const/16 v2, 0x33

    #@3fd
    aput-object v1, v0, v2

    #@3ff
    sput-object v0, Lsun/net/ftp/FtpReplyCode;->$VALUES:[Lsun/net/ftp/FtpReplyCode;

    #@401
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "val"    # I

    #@0
    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 90
    iput p3, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    #@5
    .line 89
    return-void
.end method

.method public static find(I)Lsun/net/ftp/FtpReplyCode;
    .locals 5
    .param p0, "v"    # I

    #@0
    .prologue
    .line 241
    invoke-static {}, Lsun/net/ftp/FtpReplyCode;->values()[Lsun/net/ftp/FtpReplyCode;

    #@3
    move-result-object v2

    #@4
    const/4 v1, 0x0

    #@5
    array-length v3, v2

    #@6
    :goto_0
    if-ge v1, v3, :cond_1

    #@8
    aget-object v0, v2, v1

    #@a
    .line 242
    .local v0, "code":Lsun/net/ftp/FtpReplyCode;
    invoke-virtual {v0}, Lsun/net/ftp/FtpReplyCode;->getValue()I

    #@d
    move-result v4

    #@e
    if-ne v4, p0, :cond_0

    #@10
    .line 243
    return-object v0

    #@11
    .line 241
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 246
    .end local v0    # "code":Lsun/net/ftp/FtpReplyCode;
    :cond_1
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->UNKNOWN_ERROR:Lsun/net/ftp/FtpReplyCode;

    #@16
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lsun/net/ftp/FtpReplyCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 33
    const-class v0, Lsun/net/ftp/FtpReplyCode;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lsun/net/ftp/FtpReplyCode;

    #@8
    return-object v0
.end method

.method public static values()[Lsun/net/ftp/FtpReplyCode;
    .locals 1

    #@0
    .prologue
    .line 33
    sget-object v0, Lsun/net/ftp/FtpReplyCode;->$VALUES:[Lsun/net/ftp/FtpReplyCode;

    #@2
    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    #@0
    .prologue
    .line 99
    iget v0, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    #@2
    return v0
.end method

.method public isAuthentication()Z
    .locals 2

    #@0
    .prologue
    .line 209
    iget v0, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    #@2
    div-int/lit8 v0, v0, 0xa

    #@4
    iget v1, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    #@6
    div-int/lit8 v1, v1, 0x64

    #@8
    mul-int/lit8 v1, v1, 0xa

    #@a
    sub-int/2addr v0, v1

    #@b
    const/4 v1, 0x3

    #@c
    if-ne v0, v1, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    :goto_0
    return v0

    #@10
    :cond_0
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method public isConnection()Z
    .locals 2

    #@0
    .prologue
    .line 198
    iget v0, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    #@2
    div-int/lit8 v0, v0, 0xa

    #@4
    iget v1, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    #@6
    div-int/lit8 v1, v1, 0x64

    #@8
    mul-int/lit8 v1, v1, 0xa

    #@a
    sub-int/2addr v0, v1

    #@b
    const/4 v1, 0x2

    #@c
    if-ne v0, v1, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    :goto_0
    return v0

    #@10
    :cond_0
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method public isFileSystem()Z
    .locals 2

    #@0
    .prologue
    .line 231
    iget v0, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    #@2
    div-int/lit8 v0, v0, 0xa

    #@4
    iget v1, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    #@6
    div-int/lit8 v1, v1, 0x64

    #@8
    mul-int/lit8 v1, v1, 0xa

    #@a
    sub-int/2addr v0, v1

    #@b
    const/4 v1, 0x5

    #@c
    if-ne v0, v1, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    :goto_0
    return v0

    #@10
    :cond_0
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method public isInformation()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 187
    iget v1, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    #@3
    div-int/lit8 v1, v1, 0xa

    #@5
    iget v2, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    #@7
    div-int/lit8 v2, v2, 0x64

    #@9
    mul-int/lit8 v2, v2, 0xa

    #@b
    sub-int/2addr v1, v2

    #@c
    if-ne v1, v0, :cond_0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method public isPermanentNegative()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 154
    iget v1, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    #@3
    const/16 v2, 0x1f4

    #@5
    if-lt v1, v2, :cond_0

    #@7
    iget v1, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    #@9
    const/16 v2, 0x258

    #@b
    if-ge v1, v2, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method public isPositiveCompletion()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 121
    iget v1, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    #@3
    const/16 v2, 0xc8

    #@5
    if-lt v1, v2, :cond_0

    #@7
    iget v1, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    #@9
    const/16 v2, 0x12c

    #@b
    if-ge v1, v2, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method public isPositiveIntermediate()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 132
    iget v1, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    #@3
    const/16 v2, 0x12c

    #@5
    if-lt v1, v2, :cond_0

    #@7
    iget v1, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    #@9
    const/16 v2, 0x190

    #@b
    if-ge v1, v2, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method public isPositivePreliminary()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 110
    iget v1, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    #@3
    const/16 v2, 0x64

    #@5
    if-lt v1, v2, :cond_0

    #@7
    iget v1, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    #@9
    const/16 v2, 0xc8

    #@b
    if-ge v1, v2, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method public isProtectedReply()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 165
    iget v1, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    #@3
    const/16 v2, 0x258

    #@5
    if-lt v1, v2, :cond_0

    #@7
    iget v1, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    #@9
    const/16 v2, 0x2bc

    #@b
    if-ge v1, v2, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method public isSyntax()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 176
    iget v1, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    #@3
    div-int/lit8 v1, v1, 0xa

    #@5
    iget v2, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    #@7
    div-int/lit8 v2, v2, 0x64

    #@9
    mul-int/lit8 v2, v2, 0xa

    #@b
    sub-int/2addr v1, v2

    #@c
    if-nez v1, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    :cond_0
    return v0
.end method

.method public isTransientNegative()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 143
    iget v1, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    #@3
    const/16 v2, 0x190

    #@5
    if-lt v1, v2, :cond_0

    #@7
    iget v1, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    #@9
    const/16 v2, 0x1f4

    #@b
    if-ge v1, v2, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method public isUnspecified()Z
    .locals 2

    #@0
    .prologue
    .line 220
    iget v0, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    #@2
    div-int/lit8 v0, v0, 0xa

    #@4
    iget v1, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    #@6
    div-int/lit8 v1, v1, 0x64

    #@8
    mul-int/lit8 v1, v1, 0xa

    #@a
    sub-int/2addr v0, v1

    #@b
    const/4 v1, 0x4

    #@c
    if-ne v0, v1, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    :goto_0
    return v0

    #@10
    :cond_0
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method
