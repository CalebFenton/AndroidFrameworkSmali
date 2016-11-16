.class public final enum Lcom/android/internal/telephony/IccCardConstants$State;
.super Ljava/lang/Enum;
.source "IccCardConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccCardConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/IccCardConstants$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum CARD_RESTRICTED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum READY:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;


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
    .line 71
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    #@7
    const-string/jumbo v1, "UNKNOWN"

    #@a
    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    #@f
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    #@11
    const-string/jumbo v1, "ABSENT"

    #@14
    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    #@17
    .line 72
    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    #@19
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    #@1b
    const-string/jumbo v1, "PIN_REQUIRED"

    #@1e
    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    #@21
    .line 73
    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    #@23
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    #@25
    const-string/jumbo v1, "PUK_REQUIRED"

    #@28
    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    #@2b
    .line 74
    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    #@2d
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    #@2f
    const-string/jumbo v1, "NETWORK_LOCKED"

    #@32
    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    #@35
    .line 75
    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    #@37
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    #@39
    const-string/jumbo v1, "READY"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    #@40
    .line 76
    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    #@42
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    #@44
    const-string/jumbo v1, "NOT_READY"

    #@47
    const/4 v2, 0x6

    #@48
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    #@4b
    .line 77
    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    #@4d
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    #@4f
    const-string/jumbo v1, "PERM_DISABLED"

    #@52
    const/4 v2, 0x7

    #@53
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    #@56
    .line 78
    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    #@58
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    #@5a
    const-string/jumbo v1, "CARD_IO_ERROR"

    #@5d
    const/16 v2, 0x8

    #@5f
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    #@62
    .line 79
    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    #@64
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    #@66
    const-string/jumbo v1, "CARD_RESTRICTED"

    #@69
    const/16 v2, 0x9

    #@6b
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    #@6e
    .line 80
    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_RESTRICTED:Lcom/android/internal/telephony/IccCardConstants$State;

    #@70
    .line 70
    const/16 v0, 0xa

    #@72
    new-array v0, v0, [Lcom/android/internal/telephony/IccCardConstants$State;

    #@74
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    #@76
    aput-object v1, v0, v3

    #@78
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    #@7a
    aput-object v1, v0, v4

    #@7c
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    #@7e
    aput-object v1, v0, v5

    #@80
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    #@82
    aput-object v1, v0, v6

    #@84
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    #@86
    aput-object v1, v0, v7

    #@88
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    #@8a
    const/4 v2, 0x5

    #@8b
    aput-object v1, v0, v2

    #@8d
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    #@8f
    const/4 v2, 0x6

    #@90
    aput-object v1, v0, v2

    #@92
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    #@94
    const/4 v2, 0x7

    #@95
    aput-object v1, v0, v2

    #@97
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    #@99
    const/16 v2, 0x8

    #@9b
    aput-object v1, v0, v2

    #@9d
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_RESTRICTED:Lcom/android/internal/telephony/IccCardConstants$State;

    #@9f
    const/16 v2, 0x9

    #@a1
    aput-object v1, v0, v2

    #@a3
    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->$VALUES:[Lcom/android/internal/telephony/IccCardConstants$State;

    #@a5
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static intToState(I)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1
    .param p0, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 94
    packed-switch p0, :pswitch_data_0

    #@3
    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@8
    throw v0

    #@9
    .line 95
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    #@b
    return-object v0

    #@c
    .line 96
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    #@e
    return-object v0

    #@f
    .line 97
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    #@11
    return-object v0

    #@12
    .line 98
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    #@14
    return-object v0

    #@15
    .line 99
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    #@17
    return-object v0

    #@18
    .line 100
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    #@1a
    return-object v0

    #@1b
    .line 101
    :pswitch_6
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    #@1d
    return-object v0

    #@1e
    .line 102
    :pswitch_7
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    #@20
    return-object v0

    #@21
    .line 103
    :pswitch_8
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    #@23
    return-object v0

    #@24
    .line 104
    :pswitch_9
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_RESTRICTED:Lcom/android/internal/telephony/IccCardConstants$State;

    #@26
    return-object v0

    #@27
    .line 94
    nop

    #@28
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
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 70
    const-class v0, Lcom/android/internal/telephony/IccCardConstants$State;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/IccCardConstants$State;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1

    #@0
    .prologue
    .line 70
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->$VALUES:[Lcom/android/internal/telephony/IccCardConstants$State;

    #@2
    return-object v0
.end method


# virtual methods
.method public iccCardExist()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 87
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    #@3
    if-eq p0, v1, :cond_0

    #@5
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    #@7
    if-ne p0, v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    .line 88
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    #@c
    if-eq p0, v1, :cond_0

    #@e
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    #@10
    if-eq p0, v1, :cond_0

    #@12
    .line 89
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    #@14
    if-eq p0, v1, :cond_0

    #@16
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    #@18
    if-eq p0, v1, :cond_0

    #@1a
    .line 90
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_RESTRICTED:Lcom/android/internal/telephony/IccCardConstants$State;

    #@1c
    if-eq p0, v1, :cond_0

    #@1e
    const/4 v0, 0x0

    #@1f
    goto :goto_0
.end method

.method public isPinLocked()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 83
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    #@3
    if-eq p0, v1, :cond_0

    #@5
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    #@7
    if-ne p0, v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method
