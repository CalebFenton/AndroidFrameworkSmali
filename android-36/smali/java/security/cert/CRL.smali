.class public abstract Ljava/security/cert/CRL;
.super Ljava/lang/Object;
.source "CRL.java"


# instance fields
.field private greylist-max-o type:Ljava/lang/String;


# direct methods
.method protected constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "type"    # Ljava/lang/String;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Ljava/security/cert/CRL;->type:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public final whitelist test-api getType()Ljava/lang/String;
    .registers 2

    .line 70
    iget-object v0, p0, Ljava/security/cert/CRL;->type:Ljava/lang/String;

    return-object v0
.end method

.method public abstract whitelist test-api isRevoked(Ljava/security/cert/Certificate;)Z
.end method

.method public abstract whitelist test-api toString()Ljava/lang/String;
.end method
