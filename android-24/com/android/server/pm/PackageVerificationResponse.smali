.class public Lcom/android/server/pm/PackageVerificationResponse;
.super Ljava/lang/Object;
.source "PackageVerificationResponse.java"


# instance fields
.field public final callerUid:I

.field public final code:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "callerUid"    # I

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 25
    iput p1, p0, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    #@5
    .line 26
    iput p2, p0, Lcom/android/server/pm/PackageVerificationResponse;->callerUid:I

    #@7
    .line 24
    return-void
.end method
