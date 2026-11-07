.class Landroid/security/net/config/NetworkSecurityConfig$1;
.super Ljava/lang/Object;
.source "NetworkSecurityConfig.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/security/net/config/NetworkSecurityConfig;-><init>(ZZZLandroid/security/net/config/PinSet;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/security/net/config/CertificatesEntryRef;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/security/net/config/NetworkSecurityConfig;)V
    .registers 2
    .param p1, "this$0"    # Landroid/security/net/config/NetworkSecurityConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compare(Landroid/security/net/config/CertificatesEntryRef;Landroid/security/net/config/CertificatesEntryRef;)I
    .registers 4
    .param p1, "lhs"    # Landroid/security/net/config/CertificatesEntryRef;
    .param p2, "rhs"    # Landroid/security/net/config/CertificatesEntryRef;

    .line 71
    invoke-virtual {p1}, Landroid/security/net/config/CertificatesEntryRef;->overridesPins()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 72
    invoke-virtual {p2}, Landroid/security/net/config/CertificatesEntryRef;->overridesPins()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    const/4 v0, -0x1

    :goto_f
    return v0

    .line 74
    :cond_10
    invoke-virtual {p2}, Landroid/security/net/config/CertificatesEntryRef;->overridesPins()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
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

    .line 68
    check-cast p1, Landroid/security/net/config/CertificatesEntryRef;

    check-cast p2, Landroid/security/net/config/CertificatesEntryRef;

    invoke-virtual {p0, p1, p2}, Landroid/security/net/config/NetworkSecurityConfig$1;->compare(Landroid/security/net/config/CertificatesEntryRef;Landroid/security/net/config/CertificatesEntryRef;)I

    move-result p1

    return p1
.end method
