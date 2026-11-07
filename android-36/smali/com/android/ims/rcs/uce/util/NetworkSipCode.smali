.class public Lcom/android/ims/rcs/uce/util/NetworkSipCode;
.super Ljava/lang/Object;
.source "NetworkSipCode.java"


# static fields
.field public static final blacklist SIP_ACCEPTED:Ljava/lang/String; = "Accepted"

.field public static final blacklist SIP_BAD_REQUEST:Ljava/lang/String; = "Bad Request"

.field public static final blacklist SIP_CODE_ACCEPTED:I = 0xca

.field public static final blacklist SIP_CODE_BAD_EVENT:I = 0x1e9

.field public static final blacklist SIP_CODE_BAD_REQUEST:I = 0x190

.field public static final blacklist SIP_CODE_BUSY:I = 0x1e6

.field public static final blacklist SIP_CODE_BUSY_EVERYWHERE:I = 0x258

.field public static final blacklist SIP_CODE_DECLINE:I = 0x25b

.field public static final blacklist SIP_CODE_DOES_NOT_EXIST_ANYWHERE:I = 0x25c

.field public static final blacklist SIP_CODE_FORBIDDEN:I = 0x193

.field public static final blacklist SIP_CODE_INTERVAL_TOO_BRIEF:I = 0x1a7

.field public static final blacklist SIP_CODE_METHOD_NOT_ALLOWED:I = 0x195

.field public static final blacklist SIP_CODE_NOT_FOUND:I = 0x194

.field public static final blacklist SIP_CODE_OK:I = 0xc8

.field public static final blacklist SIP_CODE_REQUEST_ENTITY_TOO_LARGE:I = 0x19d

.field public static final blacklist SIP_CODE_REQUEST_TIMEOUT:I = 0x198

.field public static final blacklist SIP_CODE_SERVER_INTERNAL_ERROR:I = 0x1f4

.field public static final blacklist SIP_CODE_SERVER_TIMEOUT:I = 0x1f8

.field public static final blacklist SIP_CODE_SERVICE_UNAVAILABLE:I = 0x1f7

.field public static final blacklist SIP_CODE_TEMPORARILY_UNAVAILABLE:I = 0x1e0

.field public static final blacklist SIP_INTERNAL_SERVER_ERROR:Ljava/lang/String; = "Internal Server Error"

.field public static final blacklist SIP_NOT_AUTHORIZED_FOR_PRESENCE:Ljava/lang/String; = "not authorized for presence"

.field public static final blacklist SIP_NOT_REGISTERED:Ljava/lang/String; = "User not registered"

.field public static final blacklist SIP_OK:Ljava/lang/String; = "OK"

.field public static final blacklist SIP_SERVICE_UNAVAILABLE:Ljava/lang/String; = "Service Unavailable"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getCapabilityErrorFromSipCode(ILjava/lang/String;I)I
    .registers 4
    .param p0, "sipCode"    # I
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "requestType"    # I

    .line 65
    const/4 v0, 0x1

    sparse-switch p0, :sswitch_data_32

    .line 110
    const/4 v0, 0x1

    .local v0, "uceError":I
    goto :goto_30

    .line 107
    .end local v0    # "uceError":I
    :sswitch_6
    const/16 v0, 0xc

    .line 108
    .restart local v0    # "uceError":I
    goto :goto_30

    .line 102
    .end local v0    # "uceError":I
    :sswitch_9
    const/4 v0, 0x6

    .line 103
    .restart local v0    # "uceError":I
    goto :goto_30

    .line 99
    .end local v0    # "uceError":I
    :sswitch_b
    const/4 v0, 0x1

    .line 100
    .restart local v0    # "uceError":I
    goto :goto_30

    .line 95
    .end local v0    # "uceError":I
    :sswitch_d
    const/16 v0, 0x9

    .line 96
    .restart local v0    # "uceError":I
    goto :goto_30

    .line 87
    .end local v0    # "uceError":I
    :sswitch_10
    if-ne p2, v0, :cond_14

    .line 89
    const/4 v0, 0x5

    .restart local v0    # "uceError":I
    goto :goto_30

    .line 91
    .end local v0    # "uceError":I
    :cond_14
    const/4 v0, 0x7

    .line 93
    .restart local v0    # "uceError":I
    goto :goto_30

    .line 68
    .end local v0    # "uceError":I
    :sswitch_16
    if-ne p2, v0, :cond_1a

    .line 70
    const/4 v0, 0x5

    .restart local v0    # "uceError":I
    goto :goto_30

    .line 73
    .end local v0    # "uceError":I
    :cond_1a
    const-string v0, "User not registered"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 75
    const/4 v0, 0x4

    .restart local v0    # "uceError":I
    goto :goto_30

    .line 76
    .end local v0    # "uceError":I
    :cond_24
    const-string v0, "not authorized for presence"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 79
    const/4 v0, 0x5

    .restart local v0    # "uceError":I
    goto :goto_30

    .line 82
    .end local v0    # "uceError":I
    :cond_2e
    const/4 v0, 0x6

    .line 85
    .restart local v0    # "uceError":I
    nop

    .line 113
    :goto_30
    return v0

    nop

    :sswitch_data_32
    .sparse-switch
        0x193 -> :sswitch_16
        0x194 -> :sswitch_10
        0x198 -> :sswitch_d
        0x1a7 -> :sswitch_b
        0x1e9 -> :sswitch_9
        0x1f4 -> :sswitch_6
        0x1f7 -> :sswitch_6
        0x1f8 -> :sswitch_16
    .end sparse-switch
.end method
