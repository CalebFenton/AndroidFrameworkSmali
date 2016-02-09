.class public final enum Landroid/net/wifi/SupplicantState;
.super Ljava/lang/Enum;
.source "SupplicantState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/SupplicantState$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/wifi/SupplicantState;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/wifi/SupplicantState;

.field private static synthetic -android_net_wifi_SupplicantStateSwitchesValues:[I

.field public static final enum ASSOCIATED:Landroid/net/wifi/SupplicantState;

.field public static final enum ASSOCIATING:Landroid/net/wifi/SupplicantState;

.field public static final enum AUTHENTICATING:Landroid/net/wifi/SupplicantState;

.field public static final enum COMPLETED:Landroid/net/wifi/SupplicantState;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/SupplicantState;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DISCONNECTED:Landroid/net/wifi/SupplicantState;

.field public static final enum DORMANT:Landroid/net/wifi/SupplicantState;

.field public static final enum FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

.field public static final enum GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

.field public static final enum INACTIVE:Landroid/net/wifi/SupplicantState;

.field public static final enum INTERFACE_DISABLED:Landroid/net/wifi/SupplicantState;

.field public static final enum INVALID:Landroid/net/wifi/SupplicantState;

.field public static final enum SCANNING:Landroid/net/wifi/SupplicantState;

.field public static final enum UNINITIALIZED:Landroid/net/wifi/SupplicantState;


# direct methods
.method private static synthetic -getandroid_net_wifi_SupplicantStateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/net/wifi/SupplicantState;->-android_net_wifi_SupplicantStateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/net/wifi/SupplicantState;->-android_net_wifi_SupplicantStateSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/net/wifi/SupplicantState;->values()[Landroid/net/wifi/SupplicantState;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    #@10
    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_c

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    #@19
    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_b

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Landroid/net/wifi/SupplicantState;->AUTHENTICATING:Landroid/net/wifi/SupplicantState;

    #@22
    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_a

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    #@2b
    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_9

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    #@34
    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x5

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_8

    #@3b
    :goto_4
    :try_start_5
    sget-object v1, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    #@3d
    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    #@40
    move-result v1

    #@41
    const/4 v2, 0x6

    #@42
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_7

    #@44
    :goto_5
    :try_start_6
    sget-object v1, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    #@46
    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    #@49
    move-result v1

    #@4a
    const/4 v2, 0x7

    #@4b
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    #@4d
    :goto_6
    :try_start_7
    sget-object v1, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    #@4f
    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    #@52
    move-result v1

    #@53
    const/16 v2, 0x8

    #@55
    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_5

    #@57
    :goto_7
    :try_start_8
    sget-object v1, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    #@59
    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    #@5c
    move-result v1

    #@5d
    const/16 v2, 0x9

    #@5f
    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_4

    #@61
    :goto_8
    :try_start_9
    sget-object v1, Landroid/net/wifi/SupplicantState;->INTERFACE_DISABLED:Landroid/net/wifi/SupplicantState;

    #@63
    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    #@66
    move-result v1

    #@67
    const/16 v2, 0xa

    #@69
    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_3

    #@6b
    :goto_9
    :try_start_a
    sget-object v1, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    #@6d
    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    #@70
    move-result v1

    #@71
    const/16 v2, 0xb

    #@73
    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_2

    #@75
    :goto_a
    :try_start_b
    sget-object v1, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    #@77
    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    #@7a
    move-result v1

    #@7b
    const/16 v2, 0xc

    #@7d
    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_1

    #@7f
    :goto_b
    :try_start_c
    sget-object v1, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    #@81
    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    #@84
    move-result v1

    #@85
    const/16 v2, 0xd

    #@87
    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_0

    #@89
    :goto_c
    sput-object v0, Landroid/net/wifi/SupplicantState;->-android_net_wifi_SupplicantStateSwitchesValues:[I

    #@8b
    return-object v0

    #@8c
    :catch_0
    move-exception v1

    #@8d
    goto :goto_c

    #@8e
    :catch_1
    move-exception v1

    #@8f
    goto :goto_b

    #@90
    :catch_2
    move-exception v1

    #@91
    goto :goto_a

    #@92
    :catch_3
    move-exception v1

    #@93
    goto :goto_9

    #@94
    :catch_4
    move-exception v1

    #@95
    goto :goto_8

    #@96
    :catch_5
    move-exception v1

    #@97
    goto :goto_7

    #@98
    :catch_6
    move-exception v1

    #@99
    goto :goto_6

    #@9a
    :catch_7
    move-exception v1

    #@9b
    goto :goto_5

    #@9c
    :catch_8
    move-exception v1

    #@9d
    goto :goto_4

    #@9e
    :catch_9
    move-exception v1

    #@9f
    goto :goto_3

    #@a0
    :catch_a
    move-exception v1

    #@a1
    goto :goto_2

    #@a2
    :catch_b
    move-exception v1

    #@a3
    goto/16 :goto_1

    #@a5
    :catch_c
    move-exception v1

    #@a6
    goto/16 :goto_0
.end method

.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 34
    new-instance v0, Landroid/net/wifi/SupplicantState;

    #@7
    const-string/jumbo v1, "DISCONNECTED"

    #@a
    invoke-direct {v0, v1, v3}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    #@d
    .line 39
    sput-object v0, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    #@f
    .line 41
    new-instance v0, Landroid/net/wifi/SupplicantState;

    #@11
    const-string/jumbo v1, "INTERFACE_DISABLED"

    #@14
    invoke-direct {v0, v1, v4}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    #@17
    .line 48
    sput-object v0, Landroid/net/wifi/SupplicantState;->INTERFACE_DISABLED:Landroid/net/wifi/SupplicantState;

    #@19
    .line 50
    new-instance v0, Landroid/net/wifi/SupplicantState;

    #@1b
    const-string/jumbo v1, "INACTIVE"

    #@1e
    invoke-direct {v0, v1, v5}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    #@21
    .line 58
    sput-object v0, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    #@23
    .line 60
    new-instance v0, Landroid/net/wifi/SupplicantState;

    #@25
    const-string/jumbo v1, "SCANNING"

    #@28
    invoke-direct {v0, v1, v6}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    #@2b
    .line 66
    sput-object v0, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    #@2d
    .line 68
    new-instance v0, Landroid/net/wifi/SupplicantState;

    #@2f
    const-string/jumbo v1, "AUTHENTICATING"

    #@32
    invoke-direct {v0, v1, v7}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    #@35
    .line 75
    sput-object v0, Landroid/net/wifi/SupplicantState;->AUTHENTICATING:Landroid/net/wifi/SupplicantState;

    #@37
    .line 77
    new-instance v0, Landroid/net/wifi/SupplicantState;

    #@39
    const-string/jumbo v1, "ASSOCIATING"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    #@40
    .line 86
    sput-object v0, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    #@42
    .line 88
    new-instance v0, Landroid/net/wifi/SupplicantState;

    #@44
    const-string/jumbo v1, "ASSOCIATED"

    #@47
    const/4 v2, 0x6

    #@48
    invoke-direct {v0, v1, v2}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    #@4b
    .line 96
    sput-object v0, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    #@4d
    .line 98
    new-instance v0, Landroid/net/wifi/SupplicantState;

    #@4f
    const-string/jumbo v1, "FOUR_WAY_HANDSHAKE"

    #@52
    const/4 v2, 0x7

    #@53
    invoke-direct {v0, v1, v2}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    #@56
    .line 106
    sput-object v0, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    #@58
    .line 108
    new-instance v0, Landroid/net/wifi/SupplicantState;

    #@5a
    const-string/jumbo v1, "GROUP_HANDSHAKE"

    #@5d
    const/16 v2, 0x8

    #@5f
    invoke-direct {v0, v1, v2}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    #@62
    .line 116
    sput-object v0, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    #@64
    .line 118
    new-instance v0, Landroid/net/wifi/SupplicantState;

    #@66
    const-string/jumbo v1, "COMPLETED"

    #@69
    const/16 v2, 0x9

    #@6b
    invoke-direct {v0, v1, v2}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    #@6e
    .line 136
    sput-object v0, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    #@70
    .line 138
    new-instance v0, Landroid/net/wifi/SupplicantState;

    #@72
    const-string/jumbo v1, "DORMANT"

    #@75
    const/16 v2, 0xa

    #@77
    invoke-direct {v0, v1, v2}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    #@7a
    .line 146
    sput-object v0, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    #@7c
    .line 148
    new-instance v0, Landroid/net/wifi/SupplicantState;

    #@7e
    const-string/jumbo v1, "UNINITIALIZED"

    #@81
    const/16 v2, 0xb

    #@83
    invoke-direct {v0, v1, v2}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    #@86
    .line 155
    sput-object v0, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    #@88
    .line 157
    new-instance v0, Landroid/net/wifi/SupplicantState;

    #@8a
    const-string/jumbo v1, "INVALID"

    #@8d
    const/16 v2, 0xc

    #@8f
    invoke-direct {v0, v1, v2}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    #@92
    .line 160
    sput-object v0, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    #@94
    .line 33
    const/16 v0, 0xd

    #@96
    new-array v0, v0, [Landroid/net/wifi/SupplicantState;

    #@98
    sget-object v1, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    #@9a
    aput-object v1, v0, v3

    #@9c
    sget-object v1, Landroid/net/wifi/SupplicantState;->INTERFACE_DISABLED:Landroid/net/wifi/SupplicantState;

    #@9e
    aput-object v1, v0, v4

    #@a0
    sget-object v1, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    #@a2
    aput-object v1, v0, v5

    #@a4
    sget-object v1, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    #@a6
    aput-object v1, v0, v6

    #@a8
    sget-object v1, Landroid/net/wifi/SupplicantState;->AUTHENTICATING:Landroid/net/wifi/SupplicantState;

    #@aa
    aput-object v1, v0, v7

    #@ac
    sget-object v1, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    #@ae
    const/4 v2, 0x5

    #@af
    aput-object v1, v0, v2

    #@b1
    sget-object v1, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    #@b3
    const/4 v2, 0x6

    #@b4
    aput-object v1, v0, v2

    #@b6
    sget-object v1, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    #@b8
    const/4 v2, 0x7

    #@b9
    aput-object v1, v0, v2

    #@bb
    sget-object v1, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    #@bd
    const/16 v2, 0x8

    #@bf
    aput-object v1, v0, v2

    #@c1
    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    #@c3
    const/16 v2, 0x9

    #@c5
    aput-object v1, v0, v2

    #@c7
    sget-object v1, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    #@c9
    const/16 v2, 0xa

    #@cb
    aput-object v1, v0, v2

    #@cd
    sget-object v1, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    #@cf
    const/16 v2, 0xb

    #@d1
    aput-object v1, v0, v2

    #@d3
    sget-object v1, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    #@d5
    const/16 v2, 0xc

    #@d7
    aput-object v1, v0, v2

    #@d9
    sput-object v0, Landroid/net/wifi/SupplicantState;->$VALUES:[Landroid/net/wifi/SupplicantState;

    #@db
    .line 255
    new-instance v0, Landroid/net/wifi/SupplicantState$1;

    #@dd
    invoke-direct {v0}, Landroid/net/wifi/SupplicantState$1;-><init>()V

    #@e0
    .line 254
    sput-object v0, Landroid/net/wifi/SupplicantState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e2
    .line 33
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static isConnecting(Landroid/net/wifi/SupplicantState;)Z
    .locals 2
    .param p0, "state"    # Landroid/net/wifi/SupplicantState;

    #@0
    .prologue
    .line 199
    invoke-static {}, Landroid/net/wifi/SupplicantState;->-getandroid_net_wifi_SupplicantStateSwitchesValues()[I

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Landroid/net/wifi/SupplicantState;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    packed-switch v0, :pswitch_data_0

    #@d
    .line 216
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "Unknown supplicant state"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 206
    :pswitch_0
    const/4 v0, 0x1

    #@17
    return v0

    #@18
    .line 214
    :pswitch_1
    const/4 v0, 0x0

    #@19
    return v0

    #@1a
    .line 199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isDriverActive(Landroid/net/wifi/SupplicantState;)Z
    .locals 2
    .param p0, "state"    # Landroid/net/wifi/SupplicantState;

    #@0
    .prologue
    .line 222
    invoke-static {}, Landroid/net/wifi/SupplicantState;->-getandroid_net_wifi_SupplicantStateSwitchesValues()[I

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Landroid/net/wifi/SupplicantState;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    packed-switch v0, :pswitch_data_0

    #@d
    .line 239
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "Unknown supplicant state"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 233
    :pswitch_0
    const/4 v0, 0x1

    #@17
    return v0

    #@18
    .line 237
    :pswitch_1
    const/4 v0, 0x0

    #@19
    return v0

    #@1a
    .line 222
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isHandshakeState(Landroid/net/wifi/SupplicantState;)Z
    .locals 2
    .param p0, "state"    # Landroid/net/wifi/SupplicantState;

    #@0
    .prologue
    .line 176
    invoke-static {}, Landroid/net/wifi/SupplicantState;->-getandroid_net_wifi_SupplicantStateSwitchesValues()[I

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Landroid/net/wifi/SupplicantState;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    packed-switch v0, :pswitch_data_0

    #@d
    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "Unknown supplicant state"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 182
    :pswitch_0
    const/4 v0, 0x1

    #@17
    return v0

    #@18
    .line 191
    :pswitch_1
    const/4 v0, 0x0

    #@19
    return v0

    #@1a
    .line 176
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isValidState(Landroid/net/wifi/SupplicantState;)Z
    .locals 2
    .param p0, "state"    # Landroid/net/wifi/SupplicantState;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 170
    sget-object v1, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    #@3
    if-eq p0, v1, :cond_0

    #@5
    sget-object v1, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    #@7
    if-eq p0, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/wifi/SupplicantState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 33
    const-class v0, Landroid/net/wifi/SupplicantState;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/net/wifi/SupplicantState;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/net/wifi/SupplicantState;
    .locals 1

    #@0
    .prologue
    .line 33
    sget-object v0, Landroid/net/wifi/SupplicantState;->$VALUES:[Landroid/net/wifi/SupplicantState;

    #@2
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 245
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 250
    invoke-virtual {p0}, Landroid/net/wifi/SupplicantState;->name()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@7
    .line 249
    return-void
.end method
