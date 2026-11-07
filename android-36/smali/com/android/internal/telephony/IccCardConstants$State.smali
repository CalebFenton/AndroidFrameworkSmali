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
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/IccCardConstants$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum greylist ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum greylist CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum blacklist CARD_RESTRICTED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum blacklist LOADED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum greylist NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum greylist NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum greylist PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum greylist PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum greylist PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum greylist READY:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum greylist UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/IccCardConstants$State;
    .registers 11

    .line 71
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v8, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v9, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_RESTRICTED:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v10, Lcom/android/internal/telephony/IccCardConstants$State;->LOADED:Lcom/android/internal/telephony/IccCardConstants$State;

    filled-new-array/range {v0 .. v10}, [Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 74
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 76
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "ABSENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 78
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "PIN_REQUIRED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 80
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "PUK_REQUIRED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 82
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "NETWORK_LOCKED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 84
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "READY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 86
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "NOT_READY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 88
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "PERM_DISABLED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 90
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "CARD_IO_ERROR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 92
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "CARD_RESTRICTED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_RESTRICTED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 93
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "LOADED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->LOADED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 71
    invoke-static {}, Lcom/android/internal/telephony/IccCardConstants$State;->$values()[Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->$VALUES:[Lcom/android/internal/telephony/IccCardConstants$State;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist intToState(I)Lcom/android/internal/telephony/IccCardConstants$State;
    .registers 2
    .param p0, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 107
    packed-switch p0, :pswitch_data_2a

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 118
    :pswitch_9
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->LOADED:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    .line 117
    :pswitch_c
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_RESTRICTED:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    .line 116
    :pswitch_f
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    .line 115
    :pswitch_12
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    .line 114
    :pswitch_15
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    .line 113
    :pswitch_18
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    .line 112
    :pswitch_1b
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    .line 111
    :pswitch_1e
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    .line 110
    :pswitch_21
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    .line 109
    :pswitch_24
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    .line 108
    :pswitch_27
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
    .end packed-switch
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/IccCardConstants$State;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 71
    const-class v0, Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0
.end method

.method public static greylist values()[Lcom/android/internal/telephony/IccCardConstants$State;
    .registers 1

    .line 71
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->$VALUES:[Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/IccCardConstants$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0
.end method


# virtual methods
.method public blacklist iccCardExist()Z
    .registers 2

    .line 100
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_27

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_27

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_27

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_27

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_27

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_27

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_27

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_RESTRICTED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_27

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->LOADED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p0, v0, :cond_25

    goto :goto_27

    :cond_25
    const/4 v0, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v0, 0x1

    :goto_28
    return v0
.end method

.method public blacklist isPinLocked()Z
    .registers 2

    .line 96
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_b

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method
