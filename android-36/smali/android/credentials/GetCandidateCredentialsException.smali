.class public Landroid/credentials/GetCandidateCredentialsException;
.super Ljava/lang/Exception;
.source "GetCandidateCredentialsException.java"


# static fields
.field public static final blacklist TYPE_INTERRUPTED:Ljava/lang/String; = "android.credentials.GetCredentialException.TYPE_INTERRUPTED"

.field public static final blacklist TYPE_NO_CREDENTIAL:Ljava/lang/String; = "android.credentials.GetCandidateCredentialsException.TYPE_NO_CREDENTIAL"

.field public static final blacklist TYPE_UNKNOWN:Ljava/lang/String; = "android.credentials.GetCandidateCredentialsException.TYPE_UNKNOWN"

.field public static final blacklist TYPE_USER_CANCELED:Ljava/lang/String; = "android.credentials.GetCredentialException.TYPE_USER_CANCELED"


# instance fields
.field private final blacklist mType:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/credentials/GetCandidateCredentialsException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/credentials/GetCandidateCredentialsException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 84
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    const-string/jumbo v0, "type must not be empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/credentials/GetCandidateCredentialsException;->mType:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/credentials/GetCandidateCredentialsException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    return-void
.end method


# virtual methods
.method public blacklist getType()Ljava/lang/String;
    .registers 2

    .line 65
    iget-object v0, p0, Landroid/credentials/GetCandidateCredentialsException;->mType:Ljava/lang/String;

    return-object v0
.end method
