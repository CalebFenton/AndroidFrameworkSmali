.class public final enum Lcom/android/internal/telephony/Call$State;
.super Ljava/lang/Enum;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/Call$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/Call$State;

.field public static final enum blacklist ACTIVE:Lcom/android/internal/telephony/Call$State;

.field public static final enum greylist ALERTING:Lcom/android/internal/telephony/Call$State;

.field public static final enum greylist DIALING:Lcom/android/internal/telephony/Call$State;

.field public static final enum greylist DISCONNECTED:Lcom/android/internal/telephony/Call$State;

.field public static final enum greylist DISCONNECTING:Lcom/android/internal/telephony/Call$State;

.field public static final enum greylist HOLDING:Lcom/android/internal/telephony/Call$State;

.field public static final enum greylist IDLE:Lcom/android/internal/telephony/Call$State;

.field public static final enum greylist INCOMING:Lcom/android/internal/telephony/Call$State;

.field public static final enum greylist WAITING:Lcom/android/internal/telephony/Call$State;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/Call$State;
    .registers 9

    .line 40
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    sget-object v2, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    sget-object v5, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    sget-object v7, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    sget-object v8, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    filled-new-array/range {v0 .. v8}, [Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 42
    new-instance v0, Lcom/android/internal/telephony/Call$State;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Call$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    .line 43
    new-instance v0, Lcom/android/internal/telephony/Call$State;

    const-string v1, "ACTIVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Call$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    .line 44
    new-instance v0, Lcom/android/internal/telephony/Call$State;

    const-string v1, "HOLDING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Call$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    .line 45
    new-instance v0, Lcom/android/internal/telephony/Call$State;

    const-string v1, "DIALING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Call$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    .line 46
    new-instance v0, Lcom/android/internal/telephony/Call$State;

    const-string v1, "ALERTING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Call$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    .line 47
    new-instance v0, Lcom/android/internal/telephony/Call$State;

    const-string v1, "INCOMING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Call$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    .line 48
    new-instance v0, Lcom/android/internal/telephony/Call$State;

    const-string v1, "WAITING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Call$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    .line 49
    new-instance v0, Lcom/android/internal/telephony/Call$State;

    const-string v1, "DISCONNECTED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Call$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    .line 50
    new-instance v0, Lcom/android/internal/telephony/Call$State;

    const-string v1, "DISCONNECTING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Call$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    .line 40
    invoke-static {}, Lcom/android/internal/telephony/Call$State;->$values()[Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/Call$State;->$VALUES:[Lcom/android/internal/telephony/Call$State;

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

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/Call$State;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 40
    const-class v0, Lcom/android/internal/telephony/Call$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/Call$State;

    return-object p0
.end method

.method public static greylist values()[Lcom/android/internal/telephony/Call$State;
    .registers 1

    .line 40
    sget-object v0, Lcom/android/internal/telephony/Call$State;->$VALUES:[Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/Call$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method


# virtual methods
.method public greylist isAlive()Z
    .registers 2

    .line 54
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq p0, v0, :cond_e

    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq p0, v0, :cond_e

    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq p0, v0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isDialing()Z
    .registers 2

    .line 63
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq p0, v0, :cond_b

    sget-object v0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public greylist isRinging()Z
    .registers 2

    .line 59
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq p0, v0, :cond_b

    sget-object v0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method
