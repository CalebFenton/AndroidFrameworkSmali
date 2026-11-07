.class public Lcom/android/org/conscrypt/ct/VerifiedSCT$Builder;
.super Ljava/lang/Object;
.source "VerifiedSCT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/ct/VerifiedSCT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist logInfo:Lcom/android/org/conscrypt/ct/LogInfo;

.field private blacklist sct:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;

.field private blacklist status:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetlogInfo(Lcom/android/org/conscrypt/ct/VerifiedSCT$Builder;)Lcom/android/org/conscrypt/ct/LogInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/org/conscrypt/ct/VerifiedSCT$Builder;->logInfo:Lcom/android/org/conscrypt/ct/LogInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetsct(Lcom/android/org/conscrypt/ct/VerifiedSCT$Builder;)Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
    .registers 1

    iget-object p0, p0, Lcom/android/org/conscrypt/ct/VerifiedSCT$Builder;->sct:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetstatus(Lcom/android/org/conscrypt/ct/VerifiedSCT$Builder;)Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;
    .registers 1

    iget-object p0, p0, Lcom/android/org/conscrypt/ct/VerifiedSCT$Builder;->status:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    return-object p0
.end method

.method public constructor blacklist <init>(Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;)V
    .registers 2
    .param p1, "sct"    # Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/org/conscrypt/ct/VerifiedSCT$Builder;->sct:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;

    .line 82
    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/android/org/conscrypt/ct/VerifiedSCT;
    .registers 3

    .line 96
    new-instance v0, Lcom/android/org/conscrypt/ct/VerifiedSCT;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/org/conscrypt/ct/VerifiedSCT;-><init>(Lcom/android/org/conscrypt/ct/VerifiedSCT$Builder;Lcom/android/org/conscrypt/ct/VerifiedSCT-IA;)V

    return-object v0
.end method

.method public blacklist setLogInfo(Lcom/android/org/conscrypt/ct/LogInfo;)Lcom/android/org/conscrypt/ct/VerifiedSCT$Builder;
    .registers 2
    .param p1, "logInfo"    # Lcom/android/org/conscrypt/ct/LogInfo;

    .line 90
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iput-object p1, p0, Lcom/android/org/conscrypt/ct/VerifiedSCT$Builder;->logInfo:Lcom/android/org/conscrypt/ct/LogInfo;

    .line 92
    return-object p0
.end method

.method public blacklist setStatus(Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;)Lcom/android/org/conscrypt/ct/VerifiedSCT$Builder;
    .registers 2
    .param p1, "status"    # Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    .line 85
    iput-object p1, p0, Lcom/android/org/conscrypt/ct/VerifiedSCT$Builder;->status:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    .line 86
    return-object p0
.end method
