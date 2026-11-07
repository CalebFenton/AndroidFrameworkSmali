.class public final enum Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;
.super Ljava/lang/Enum;
.source "PhoneInternalInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneInternalInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SuppService"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

.field public static final enum blacklist CONFERENCE:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

.field public static final enum blacklist HANGUP:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

.field public static final enum blacklist HOLD:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

.field public static final enum blacklist REJECT:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

.field public static final enum blacklist RESUME:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

.field public static final enum blacklist SEPARATE:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

.field public static final enum blacklist SWITCH:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

.field public static final enum blacklist TRANSFER:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

.field public static final enum blacklist UNKNOWN:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;
    .registers 9

    .line 71
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->UNKNOWN:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    sget-object v1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->SWITCH:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    sget-object v2, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->SEPARATE:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    sget-object v3, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->TRANSFER:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    sget-object v4, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->CONFERENCE:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    sget-object v5, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->REJECT:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    sget-object v6, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->HANGUP:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    sget-object v7, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->RESUME:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    sget-object v8, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->HOLD:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    filled-new-array/range {v0 .. v8}, [Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 72
    new-instance v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->UNKNOWN:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    new-instance v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    const-string v1, "SWITCH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->SWITCH:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    new-instance v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    const-string v1, "SEPARATE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->SEPARATE:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    new-instance v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    const-string v1, "TRANSFER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->TRANSFER:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    new-instance v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    const-string v1, "CONFERENCE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->CONFERENCE:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    new-instance v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    const-string v1, "REJECT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->REJECT:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    new-instance v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    const-string v1, "HANGUP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->HANGUP:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    new-instance v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    const-string v1, "RESUME"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->RESUME:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    new-instance v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    const-string v1, "HOLD"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->HOLD:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    .line 71
    invoke-static {}, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->$values()[Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->$VALUES:[Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

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

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 71
    const-class v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;
    .registers 1

    .line 71
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->$VALUES:[Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    return-object v0
.end method
