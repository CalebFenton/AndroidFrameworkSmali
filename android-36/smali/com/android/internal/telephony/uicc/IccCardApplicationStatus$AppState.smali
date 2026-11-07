.class public final enum Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
.super Ljava/lang/Enum;
.source "IccCardApplicationStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

.field public static final enum greylist APPSTATE_DETECTED:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

.field public static final enum greylist APPSTATE_PIN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

.field public static final enum greylist APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

.field public static final enum greylist APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

.field public static final enum greylist APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

.field public static final enum greylist APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    .registers 6

    .line 49
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_DETECTED:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    filled-new-array/range {v0 .. v5}, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 52
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    const-string v1, "APPSTATE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 54
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    const-string v1, "APPSTATE_DETECTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_DETECTED:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 56
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    const-string v1, "APPSTATE_PIN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 58
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    const-string v1, "APPSTATE_PUK"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 60
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    const-string v1, "APPSTATE_SUBSCRIPTION_PERSO"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 62
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    const-string v1, "APPSTATE_READY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 49
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->$values()[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->$VALUES:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

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

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 49
    const-class v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    return-object p0
.end method

.method public static greylist values()[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    .registers 1

    .line 49
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->$VALUES:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    return-object v0
.end method
