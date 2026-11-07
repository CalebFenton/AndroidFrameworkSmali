.class public final enum Lcom/android/internal/telephony/gsm/SsData$RequestType;
.super Ljava/lang/Enum;
.source "SsData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/gsm/SsData$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/gsm/SsData$RequestType;

.field public static final enum blacklist SS_ACTIVATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

.field public static final enum blacklist SS_DEACTIVATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

.field public static final enum blacklist SS_ERASURE:Lcom/android/internal/telephony/gsm/SsData$RequestType;

.field public static final enum blacklist SS_INTERROGATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

.field public static final enum blacklist SS_REGISTRATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/gsm/SsData$RequestType;
    .registers 5

    .line 82
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_ACTIVATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_DEACTIVATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    sget-object v2, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_INTERROGATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    sget-object v3, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_REGISTRATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    sget-object v4, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_ERASURE:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/internal/telephony/gsm/SsData$RequestType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 83
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;

    const-string v1, "SS_ACTIVATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SsData$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_ACTIVATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    .line 84
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;

    const-string v1, "SS_DEACTIVATION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SsData$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_DEACTIVATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    .line 85
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;

    const-string v1, "SS_INTERROGATION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SsData$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_INTERROGATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    .line 86
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;

    const-string v1, "SS_REGISTRATION"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SsData$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_REGISTRATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    .line 87
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;

    const-string v1, "SS_ERASURE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SsData$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_ERASURE:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    .line 82
    invoke-static {}, Lcom/android/internal/telephony/gsm/SsData$RequestType;->$values()[Lcom/android/internal/telephony/gsm/SsData$RequestType;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;->$VALUES:[Lcom/android/internal/telephony/gsm/SsData$RequestType;

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

    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SsData$RequestType;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 82
    const-class v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/gsm/SsData$RequestType;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/gsm/SsData$RequestType;
    .registers 1

    .line 82
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;->$VALUES:[Lcom/android/internal/telephony/gsm/SsData$RequestType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/gsm/SsData$RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/gsm/SsData$RequestType;

    return-object v0
.end method


# virtual methods
.method public blacklist isTypeInterrogation()Z
    .registers 2

    .line 90
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_INTERROGATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    if-ne p0, v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method
