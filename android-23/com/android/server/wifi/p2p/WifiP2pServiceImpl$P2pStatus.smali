.class public final enum Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
.super Ljava/lang/Enum;
.source "WifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "P2pStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

.field public static final enum BOTH_GO_INTENT_15:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

.field public static final enum INCOMPATIBLE_PARAMETERS:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

.field public static final enum INCOMPATIBLE_PROVISIONING_METHOD:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

.field public static final enum INFORMATION_IS_CURRENTLY_UNAVAILABLE:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

.field public static final enum INVALID_PARAMETER:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

.field public static final enum LIMIT_REACHED:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

.field public static final enum NO_COMMON_CHANNEL:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

.field public static final enum PREVIOUS_PROTOCOL_ERROR:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

.field public static final enum REJECTED_BY_USER:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

.field public static final enum SUCCESS:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

.field public static final enum UNABLE_TO_ACCOMMODATE_REQUEST:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

.field public static final enum UNKNOWN:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

.field public static final enum UNKNOWN_P2P_GROUP:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;


# direct methods
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
    .line 240
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@7
    const-string/jumbo v1, "SUCCESS"

    #@a
    invoke-direct {v0, v1, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;-><init>(Ljava/lang/String;I)V

    #@d
    .line 241
    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->SUCCESS:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@f
    .line 243
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@11
    const-string/jumbo v1, "INFORMATION_IS_CURRENTLY_UNAVAILABLE"

    #@14
    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;-><init>(Ljava/lang/String;I)V

    #@17
    .line 244
    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->INFORMATION_IS_CURRENTLY_UNAVAILABLE:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@19
    .line 246
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@1b
    const-string/jumbo v1, "INCOMPATIBLE_PARAMETERS"

    #@1e
    invoke-direct {v0, v1, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;-><init>(Ljava/lang/String;I)V

    #@21
    .line 247
    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->INCOMPATIBLE_PARAMETERS:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@23
    .line 249
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@25
    const-string/jumbo v1, "LIMIT_REACHED"

    #@28
    invoke-direct {v0, v1, v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;-><init>(Ljava/lang/String;I)V

    #@2b
    .line 251
    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->LIMIT_REACHED:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@2d
    .line 253
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@2f
    const-string/jumbo v1, "INVALID_PARAMETER"

    #@32
    invoke-direct {v0, v1, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;-><init>(Ljava/lang/String;I)V

    #@35
    .line 254
    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->INVALID_PARAMETER:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@37
    .line 256
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@39
    const-string/jumbo v1, "UNABLE_TO_ACCOMMODATE_REQUEST"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;-><init>(Ljava/lang/String;I)V

    #@40
    .line 257
    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNABLE_TO_ACCOMMODATE_REQUEST:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@42
    .line 259
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@44
    const-string/jumbo v1, "PREVIOUS_PROTOCOL_ERROR"

    #@47
    const/4 v2, 0x6

    #@48
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;-><init>(Ljava/lang/String;I)V

    #@4b
    .line 260
    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->PREVIOUS_PROTOCOL_ERROR:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@4d
    .line 262
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@4f
    const-string/jumbo v1, "NO_COMMON_CHANNEL"

    #@52
    const/4 v2, 0x7

    #@53
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;-><init>(Ljava/lang/String;I)V

    #@56
    .line 263
    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->NO_COMMON_CHANNEL:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@58
    .line 265
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@5a
    const-string/jumbo v1, "UNKNOWN_P2P_GROUP"

    #@5d
    const/16 v2, 0x8

    #@5f
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;-><init>(Ljava/lang/String;I)V

    #@62
    .line 267
    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNKNOWN_P2P_GROUP:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@64
    .line 269
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@66
    const-string/jumbo v1, "BOTH_GO_INTENT_15"

    #@69
    const/16 v2, 0x9

    #@6b
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;-><init>(Ljava/lang/String;I)V

    #@6e
    .line 270
    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->BOTH_GO_INTENT_15:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@70
    .line 272
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@72
    const-string/jumbo v1, "INCOMPATIBLE_PROVISIONING_METHOD"

    #@75
    const/16 v2, 0xa

    #@77
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;-><init>(Ljava/lang/String;I)V

    #@7a
    .line 273
    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->INCOMPATIBLE_PROVISIONING_METHOD:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@7c
    .line 275
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@7e
    const-string/jumbo v1, "REJECTED_BY_USER"

    #@81
    const/16 v2, 0xb

    #@83
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;-><init>(Ljava/lang/String;I)V

    #@86
    .line 276
    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->REJECTED_BY_USER:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@88
    .line 278
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@8a
    const-string/jumbo v1, "UNKNOWN"

    #@8d
    const/16 v2, 0xc

    #@8f
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;-><init>(Ljava/lang/String;I)V

    #@92
    .line 279
    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNKNOWN:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@94
    .line 239
    const/16 v0, 0xd

    #@96
    new-array v0, v0, [Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@98
    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->SUCCESS:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@9a
    aput-object v1, v0, v3

    #@9c
    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->INFORMATION_IS_CURRENTLY_UNAVAILABLE:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@9e
    aput-object v1, v0, v4

    #@a0
    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->INCOMPATIBLE_PARAMETERS:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@a2
    aput-object v1, v0, v5

    #@a4
    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->LIMIT_REACHED:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@a6
    aput-object v1, v0, v6

    #@a8
    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->INVALID_PARAMETER:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@aa
    aput-object v1, v0, v7

    #@ac
    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNABLE_TO_ACCOMMODATE_REQUEST:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@ae
    const/4 v2, 0x5

    #@af
    aput-object v1, v0, v2

    #@b1
    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->PREVIOUS_PROTOCOL_ERROR:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@b3
    const/4 v2, 0x6

    #@b4
    aput-object v1, v0, v2

    #@b6
    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->NO_COMMON_CHANNEL:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@b8
    const/4 v2, 0x7

    #@b9
    aput-object v1, v0, v2

    #@bb
    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNKNOWN_P2P_GROUP:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@bd
    const/16 v2, 0x8

    #@bf
    aput-object v1, v0, v2

    #@c1
    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->BOTH_GO_INTENT_15:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@c3
    const/16 v2, 0x9

    #@c5
    aput-object v1, v0, v2

    #@c7
    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->INCOMPATIBLE_PROVISIONING_METHOD:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@c9
    const/16 v2, 0xa

    #@cb
    aput-object v1, v0, v2

    #@cd
    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->REJECTED_BY_USER:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@cf
    const/16 v2, 0xb

    #@d1
    aput-object v1, v0, v2

    #@d3
    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNKNOWN:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@d5
    const/16 v2, 0xc

    #@d7
    aput-object v1, v0, v2

    #@d9
    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->$VALUES:[Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@db
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 239
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(I)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    .locals 1
    .param p0, "error"    # I

    #@0
    .prologue
    .line 282
    packed-switch p0, :pswitch_data_0

    #@3
    .line 308
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNKNOWN:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@5
    return-object v0

    #@6
    .line 284
    :pswitch_0
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->SUCCESS:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@8
    return-object v0

    #@9
    .line 286
    :pswitch_1
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->INFORMATION_IS_CURRENTLY_UNAVAILABLE:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@b
    return-object v0

    #@c
    .line 288
    :pswitch_2
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->INCOMPATIBLE_PARAMETERS:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@e
    return-object v0

    #@f
    .line 290
    :pswitch_3
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->LIMIT_REACHED:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@11
    return-object v0

    #@12
    .line 292
    :pswitch_4
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->INVALID_PARAMETER:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@14
    return-object v0

    #@15
    .line 294
    :pswitch_5
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNABLE_TO_ACCOMMODATE_REQUEST:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@17
    return-object v0

    #@18
    .line 296
    :pswitch_6
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->PREVIOUS_PROTOCOL_ERROR:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@1a
    return-object v0

    #@1b
    .line 298
    :pswitch_7
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->NO_COMMON_CHANNEL:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@1d
    return-object v0

    #@1e
    .line 300
    :pswitch_8
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNKNOWN_P2P_GROUP:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@20
    return-object v0

    #@21
    .line 302
    :pswitch_9
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->BOTH_GO_INTENT_15:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@23
    return-object v0

    #@24
    .line 304
    :pswitch_a
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->INCOMPATIBLE_PROVISIONING_METHOD:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@26
    return-object v0

    #@27
    .line 306
    :pswitch_b
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->REJECTED_BY_USER:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@29
    return-object v0

    #@2a
    .line 282
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 239
    const-class v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    .locals 1

    #@0
    .prologue
    .line 239
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->$VALUES:[Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@2
    return-object v0
.end method
