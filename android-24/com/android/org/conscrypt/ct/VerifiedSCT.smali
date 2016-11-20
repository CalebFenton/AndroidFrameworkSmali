.class public final Lcom/android/org/conscrypt/ct/VerifiedSCT;
.super Ljava/lang/Object;
.source "VerifiedSCT.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;
    }
.end annotation


# instance fields
.field public final sct:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;

.field public final status:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;


# direct methods
.method public constructor <init>(Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;)V
    .locals 0
    .param p1, "sct"    # Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
    .param p2, "status"    # Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 34
    iput-object p1, p0, Lcom/android/org/conscrypt/ct/VerifiedSCT;->sct:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;

    #@5
    .line 35
    iput-object p2, p0, Lcom/android/org/conscrypt/ct/VerifiedSCT;->status:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    #@7
    .line 33
    return-void
.end method
