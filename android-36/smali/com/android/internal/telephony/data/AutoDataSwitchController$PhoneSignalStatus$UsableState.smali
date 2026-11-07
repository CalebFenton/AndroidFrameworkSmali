.class final enum Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;
.super Ljava/lang/Enum;
.source "AutoDataSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "UsableState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;

.field public static final enum blacklist HOME:Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;

.field public static final enum blacklist NON_TERRESTRIAL:Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;

.field public static final enum blacklist NOT_USABLE:Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;

.field public static final enum blacklist ROAMING_ENABLED:Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;


# instance fields
.field final blacklist mScore:I


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;
    .registers 4

    .line 256
    sget-object v0, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;->HOME:Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;

    sget-object v1, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;->ROAMING_ENABLED:Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;

    sget-object v2, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;->NON_TERRESTRIAL:Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;

    sget-object v3, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;->NOT_USABLE:Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 257
    new-instance v0, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;

    const-string v1, "HOME"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;->HOME:Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;

    .line 258
    new-instance v0, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;

    const-string v1, "ROAMING_ENABLED"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v4}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;->ROAMING_ENABLED:Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;

    .line 259
    new-instance v0, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;

    const-string v1, "NON_TERRESTRIAL"

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;->NON_TERRESTRIAL:Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;

    .line 260
    new-instance v0, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;

    const/4 v1, 0x3

    const/4 v2, -0x1

    const-string v3, "NOT_USABLE"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;->NOT_USABLE:Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;

    .line 256
    invoke-static {}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;->$values()[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;->$VALUES:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 266
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 267
    iput p3, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;->mScore:I

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 256
    const-class v0, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;
    .registers 1

    .line 256
    sget-object v0, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;->$VALUES:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;

    return-object v0
.end method
