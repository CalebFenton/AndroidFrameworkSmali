.class public final enum Lcom/android/org/conscrypt/ct/PolicyCompliance;
.super Ljava/lang/Enum;
.source "PolicyCompliance.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/org/conscrypt/ct/PolicyCompliance;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/org/conscrypt/ct/PolicyCompliance;

.field public static final enum blacklist COMPLY:Lcom/android/org/conscrypt/ct/PolicyCompliance;

.field public static final enum blacklist NOT_ENOUGH_DIVERSE_SCTS:Lcom/android/org/conscrypt/ct/PolicyCompliance;

.field public static final enum blacklist NOT_ENOUGH_SCTS:Lcom/android/org/conscrypt/ct/PolicyCompliance;

.field public static final enum blacklist NO_RFC6962_LOG:Lcom/android/org/conscrypt/ct/PolicyCompliance;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/org/conscrypt/ct/PolicyCompliance;
    .registers 4

    .line 25
    sget-object v0, Lcom/android/org/conscrypt/ct/PolicyCompliance;->COMPLY:Lcom/android/org/conscrypt/ct/PolicyCompliance;

    sget-object v1, Lcom/android/org/conscrypt/ct/PolicyCompliance;->NOT_ENOUGH_SCTS:Lcom/android/org/conscrypt/ct/PolicyCompliance;

    sget-object v2, Lcom/android/org/conscrypt/ct/PolicyCompliance;->NOT_ENOUGH_DIVERSE_SCTS:Lcom/android/org/conscrypt/ct/PolicyCompliance;

    sget-object v3, Lcom/android/org/conscrypt/ct/PolicyCompliance;->NO_RFC6962_LOG:Lcom/android/org/conscrypt/ct/PolicyCompliance;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/org/conscrypt/ct/PolicyCompliance;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 27
    new-instance v0, Lcom/android/org/conscrypt/ct/PolicyCompliance;

    const-string v1, "COMPLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ct/PolicyCompliance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/ct/PolicyCompliance;->COMPLY:Lcom/android/org/conscrypt/ct/PolicyCompliance;

    .line 28
    new-instance v0, Lcom/android/org/conscrypt/ct/PolicyCompliance;

    const-string v1, "NOT_ENOUGH_SCTS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ct/PolicyCompliance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/ct/PolicyCompliance;->NOT_ENOUGH_SCTS:Lcom/android/org/conscrypt/ct/PolicyCompliance;

    .line 29
    new-instance v0, Lcom/android/org/conscrypt/ct/PolicyCompliance;

    const-string v1, "NOT_ENOUGH_DIVERSE_SCTS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ct/PolicyCompliance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/ct/PolicyCompliance;->NOT_ENOUGH_DIVERSE_SCTS:Lcom/android/org/conscrypt/ct/PolicyCompliance;

    .line 30
    new-instance v0, Lcom/android/org/conscrypt/ct/PolicyCompliance;

    const-string v1, "NO_RFC6962_LOG"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ct/PolicyCompliance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/ct/PolicyCompliance;->NO_RFC6962_LOG:Lcom/android/org/conscrypt/ct/PolicyCompliance;

    .line 25
    invoke-static {}, Lcom/android/org/conscrypt/ct/PolicyCompliance;->$values()[Lcom/android/org/conscrypt/ct/PolicyCompliance;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/ct/PolicyCompliance;->$VALUES:[Lcom/android/org/conscrypt/ct/PolicyCompliance;

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

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/ct/PolicyCompliance;
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

    .line 25
    const-class v0, Lcom/android/org/conscrypt/ct/PolicyCompliance;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/ct/PolicyCompliance;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/org/conscrypt/ct/PolicyCompliance;
    .registers 1

    .line 25
    sget-object v0, Lcom/android/org/conscrypt/ct/PolicyCompliance;->$VALUES:[Lcom/android/org/conscrypt/ct/PolicyCompliance;

    invoke-virtual {v0}, [Lcom/android/org/conscrypt/ct/PolicyCompliance;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/org/conscrypt/ct/PolicyCompliance;

    return-object v0
.end method
