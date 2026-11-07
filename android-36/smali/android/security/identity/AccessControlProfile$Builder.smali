.class public final Landroid/security/identity/AccessControlProfile$Builder;
.super Ljava/lang/Object;
.source "AccessControlProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/identity/AccessControlProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mProfile:Landroid/security/identity/AccessControlProfile;


# direct methods
.method public constructor whitelist <init>(Landroid/security/identity/AccessControlProfileId;)V
    .registers 4
    .param p1, "accessControlProfileId"    # Landroid/security/identity/AccessControlProfileId;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Landroid/security/identity/AccessControlProfile;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/security/identity/AccessControlProfile;-><init>(Landroid/security/identity/AccessControlProfile-IA;)V

    iput-object v0, p0, Landroid/security/identity/AccessControlProfile$Builder;->mProfile:Landroid/security/identity/AccessControlProfile;

    .line 69
    iget-object v0, p0, Landroid/security/identity/AccessControlProfile$Builder;->mProfile:Landroid/security/identity/AccessControlProfile;

    invoke-static {v0, p1}, Landroid/security/identity/AccessControlProfile;->-$$Nest$fputmAccessControlProfileId(Landroid/security/identity/AccessControlProfile;Landroid/security/identity/AccessControlProfileId;)V

    .line 70
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/security/identity/AccessControlProfile;
    .registers 2

    .line 128
    iget-object v0, p0, Landroid/security/identity/AccessControlProfile$Builder;->mProfile:Landroid/security/identity/AccessControlProfile;

    return-object v0
.end method

.method public whitelist setReaderCertificate(Ljava/security/cert/X509Certificate;)Landroid/security/identity/AccessControlProfile$Builder;
    .registers 3
    .param p1, "readerCertificate"    # Ljava/security/cert/X509Certificate;

    .line 118
    iget-object v0, p0, Landroid/security/identity/AccessControlProfile$Builder;->mProfile:Landroid/security/identity/AccessControlProfile;

    invoke-static {v0, p1}, Landroid/security/identity/AccessControlProfile;->-$$Nest$fputmReaderCertificate(Landroid/security/identity/AccessControlProfile;Ljava/security/cert/X509Certificate;)V

    .line 119
    return-object p0
.end method

.method public whitelist setUserAuthenticationRequired(Z)Landroid/security/identity/AccessControlProfile$Builder;
    .registers 3
    .param p1, "userAuthenticationRequired"    # Z

    .line 85
    iget-object v0, p0, Landroid/security/identity/AccessControlProfile$Builder;->mProfile:Landroid/security/identity/AccessControlProfile;

    invoke-static {v0, p1}, Landroid/security/identity/AccessControlProfile;->-$$Nest$fputmUserAuthenticationRequired(Landroid/security/identity/AccessControlProfile;Z)V

    .line 86
    return-object p0
.end method

.method public whitelist setUserAuthenticationTimeout(J)Landroid/security/identity/AccessControlProfile$Builder;
    .registers 4
    .param p1, "userAuthenticationTimeoutMillis"    # J

    .line 103
    iget-object v0, p0, Landroid/security/identity/AccessControlProfile$Builder;->mProfile:Landroid/security/identity/AccessControlProfile;

    invoke-static {v0, p1, p2}, Landroid/security/identity/AccessControlProfile;->-$$Nest$fputmUserAuthenticationTimeout(Landroid/security/identity/AccessControlProfile;J)V

    .line 104
    return-object p0
.end method
