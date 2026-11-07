.class public final enum Lcom/android/internal/telephony/PhoneConstants$DataState;
.super Ljava/lang/Enum;
.source "PhoneConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/PhoneConstants$DataState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/PhoneConstants$DataState;

.field public static final enum greylist CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

.field public static final enum greylist CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

.field public static final enum greylist DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

.field public static final enum blacklist DISCONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

.field public static final enum greylist SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/PhoneConstants$DataState;
    .registers 5

    .line 57
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 60
    new-instance v0, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string v1, "CONNECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneConstants$DataState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 62
    new-instance v0, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string v1, "CONNECTING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneConstants$DataState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 64
    new-instance v0, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string v1, "DISCONNECTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneConstants$DataState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 66
    new-instance v0, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string v1, "SUSPENDED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneConstants$DataState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 68
    new-instance v0, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string v1, "DISCONNECTING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneConstants$DataState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 57
    invoke-static {}, Lcom/android/internal/telephony/PhoneConstants$DataState;->$values()[Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->$VALUES:[Lcom/android/internal/telephony/PhoneConstants$DataState;

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

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
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

    .line 57
    const-class v0, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object v0
.end method

.method public static greylist values()[Lcom/android/internal/telephony/PhoneConstants$DataState;
    .registers 1

    .line 57
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->$VALUES:[Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/PhoneConstants$DataState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object v0
.end method
