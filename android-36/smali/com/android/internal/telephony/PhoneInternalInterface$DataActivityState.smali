.class public final enum Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;
.super Ljava/lang/Enum;
.source "PhoneInternalInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneInternalInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataActivityState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

.field public static final enum blacklist DATAIN:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

.field public static final enum blacklist DATAINANDOUT:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

.field public static final enum blacklist DATAOUT:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

.field public static final enum blacklist DORMANT:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

.field public static final enum greylist NONE:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;
    .registers 5

    .line 55
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->NONE:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    sget-object v1, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->DATAIN:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    sget-object v2, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->DATAOUT:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    sget-object v3, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->DATAINANDOUT:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    sget-object v4, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->DORMANT:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 67
    new-instance v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->NONE:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    .line 68
    new-instance v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    const-string v1, "DATAIN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->DATAIN:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    new-instance v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    const-string v1, "DATAOUT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->DATAOUT:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    new-instance v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    const-string v1, "DATAINANDOUT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->DATAINANDOUT:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    new-instance v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    const-string v1, "DORMANT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->DORMANT:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    .line 55
    invoke-static {}, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->$values()[Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->$VALUES:[Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

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

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 55
    const-class v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;
    .registers 1

    .line 55
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->$VALUES:[Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    return-object v0
.end method
