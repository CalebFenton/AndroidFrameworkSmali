.class public final enum Lcom/android/internal/telephony/DriverCall$State;
.super Ljava/lang/Enum;
.source "DriverCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DriverCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/DriverCall$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/DriverCall$State;

.field public static final enum greylist ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

.field public static final enum greylist ALERTING:Lcom/android/internal/telephony/DriverCall$State;

.field public static final enum greylist DIALING:Lcom/android/internal/telephony/DriverCall$State;

.field public static final enum greylist HOLDING:Lcom/android/internal/telephony/DriverCall$State;

.field public static final enum greylist INCOMING:Lcom/android/internal/telephony/DriverCall$State;

.field public static final enum greylist WAITING:Lcom/android/internal/telephony/DriverCall$State;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/DriverCall$State;
    .registers 6

    .line 30
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v1, Lcom/android/internal/telephony/DriverCall$State;->HOLDING:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v2, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v3, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v4, Lcom/android/internal/telephony/DriverCall$State;->INCOMING:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v5, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    filled-new-array/range {v0 .. v5}, [Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 33
    new-instance v0, Lcom/android/internal/telephony/DriverCall$State;

    const-string v1, "ACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DriverCall$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    .line 35
    new-instance v0, Lcom/android/internal/telephony/DriverCall$State;

    const-string v1, "HOLDING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DriverCall$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DriverCall$State;->HOLDING:Lcom/android/internal/telephony/DriverCall$State;

    .line 37
    new-instance v0, Lcom/android/internal/telephony/DriverCall$State;

    const-string v1, "DIALING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DriverCall$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    .line 39
    new-instance v0, Lcom/android/internal/telephony/DriverCall$State;

    const-string v1, "ALERTING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DriverCall$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    .line 41
    new-instance v0, Lcom/android/internal/telephony/DriverCall$State;

    const-string v1, "INCOMING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DriverCall$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DriverCall$State;->INCOMING:Lcom/android/internal/telephony/DriverCall$State;

    .line 43
    new-instance v0, Lcom/android/internal/telephony/DriverCall$State;

    const-string v1, "WAITING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DriverCall$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    .line 30
    invoke-static {}, Lcom/android/internal/telephony/DriverCall$State;->$values()[Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/DriverCall$State;->$VALUES:[Lcom/android/internal/telephony/DriverCall$State;

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

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/DriverCall$State;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 30
    const-class v0, Lcom/android/internal/telephony/DriverCall$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/DriverCall$State;

    return-object p0
.end method

.method public static greylist values()[Lcom/android/internal/telephony/DriverCall$State;
    .registers 1

    .line 30
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->$VALUES:[Lcom/android/internal/telephony/DriverCall$State;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/DriverCall$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/DriverCall$State;

    return-object v0
.end method
