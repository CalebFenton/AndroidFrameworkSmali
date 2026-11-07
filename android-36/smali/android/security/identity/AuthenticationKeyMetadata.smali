.class public final Landroid/security/identity/AuthenticationKeyMetadata;
.super Ljava/lang/Object;
.source "AuthenticationKeyMetadata.java"


# instance fields
.field private blacklist mExpirationDate:Ljava/time/Instant;

.field private blacklist mUsageCount:I


# direct methods
.method constructor blacklist <init>(ILjava/time/Instant;)V
    .registers 3
    .param p1, "usageCount"    # I
    .param p2, "expirationDate"    # Ljava/time/Instant;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Landroid/security/identity/AuthenticationKeyMetadata;->mUsageCount:I

    .line 33
    iput-object p2, p0, Landroid/security/identity/AuthenticationKeyMetadata;->mExpirationDate:Ljava/time/Instant;

    .line 34
    return-void
.end method


# virtual methods
.method public whitelist getExpirationDate()Ljava/time/Instant;
    .registers 2

    .line 51
    iget-object v0, p0, Landroid/security/identity/AuthenticationKeyMetadata;->mExpirationDate:Ljava/time/Instant;

    return-object v0
.end method

.method public whitelist getUsageCount()I
    .registers 2

    .line 42
    iget v0, p0, Landroid/security/identity/AuthenticationKeyMetadata;->mUsageCount:I

    return v0
.end method
