.class public final Lcom/android/org/conscrypt/ct/VerifiedSCT;
.super Ljava/lang/Object;
.source "VerifiedSCT.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/ct/VerifiedSCT$Builder;,
        Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;
    }
.end annotation


# instance fields
.field private final blacklist logInfo:Lcom/android/org/conscrypt/ct/LogInfo;

.field private final blacklist sct:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;

.field private final blacklist status:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;


# direct methods
.method private constructor blacklist <init>(Lcom/android/org/conscrypt/ct/VerifiedSCT$Builder;)V
    .registers 4
    .param p1, "builder"    # Lcom/android/org/conscrypt/ct/VerifiedSCT$Builder;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Lcom/android/org/conscrypt/ct/VerifiedSCT$Builder;->-$$Nest$fgetsct(Lcom/android/org/conscrypt/ct/VerifiedSCT$Builder;)Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-static {p1}, Lcom/android/org/conscrypt/ct/VerifiedSCT$Builder;->-$$Nest$fgetstatus(Lcom/android/org/conscrypt/ct/VerifiedSCT$Builder;)Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {p1}, Lcom/android/org/conscrypt/ct/VerifiedSCT$Builder;->-$$Nest$fgetstatus(Lcom/android/org/conscrypt/ct/VerifiedSCT$Builder;)Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    move-result-object v0

    sget-object v1, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->VALID:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    if-ne v0, v1, :cond_20

    .line 48
    invoke-static {p1}, Lcom/android/org/conscrypt/ct/VerifiedSCT$Builder;->-$$Nest$fgetlogInfo(Lcom/android/org/conscrypt/ct/VerifiedSCT$Builder;)Lcom/android/org/conscrypt/ct/LogInfo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_20
    invoke-static {p1}, Lcom/android/org/conscrypt/ct/VerifiedSCT$Builder;->-$$Nest$fgetsct(Lcom/android/org/conscrypt/ct/VerifiedSCT$Builder;)Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ct/VerifiedSCT;->sct:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;

    .line 52
    invoke-static {p1}, Lcom/android/org/conscrypt/ct/VerifiedSCT$Builder;->-$$Nest$fgetstatus(Lcom/android/org/conscrypt/ct/VerifiedSCT$Builder;)Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ct/VerifiedSCT;->status:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    .line 53
    invoke-static {p1}, Lcom/android/org/conscrypt/ct/VerifiedSCT$Builder;->-$$Nest$fgetlogInfo(Lcom/android/org/conscrypt/ct/VerifiedSCT$Builder;)Lcom/android/org/conscrypt/ct/LogInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ct/VerifiedSCT;->logInfo:Lcom/android/org/conscrypt/ct/LogInfo;

    .line 54
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/org/conscrypt/ct/VerifiedSCT$Builder;Lcom/android/org/conscrypt/ct/VerifiedSCT-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/ct/VerifiedSCT;-><init>(Lcom/android/org/conscrypt/ct/VerifiedSCT$Builder;)V

    return-void
.end method


# virtual methods
.method public blacklist getLogInfo()Lcom/android/org/conscrypt/ct/LogInfo;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/VerifiedSCT;->logInfo:Lcom/android/org/conscrypt/ct/LogInfo;

    return-object v0
.end method

.method public blacklist getSct()Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/VerifiedSCT;->sct:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;

    return-object v0
.end method

.method public blacklist getStatus()Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/VerifiedSCT;->status:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    return-object v0
.end method

.method public blacklist isValid()Z
    .registers 3

    .line 65
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/VerifiedSCT;->status:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    sget-object v1, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->VALID:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
