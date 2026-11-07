.class Landroid/security/net/config/SystemCertificateSource$NoPreloadHolder;
.super Ljava/lang/Object;
.source "SystemCertificateSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/net/config/SystemCertificateSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoPreloadHolder"
.end annotation


# static fields
.field private static final greylist-max-o INSTANCE:Landroid/security/net/config/SystemCertificateSource;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Landroid/security/net/config/SystemCertificateSource;
    .registers 1

    sget-object v0, Landroid/security/net/config/SystemCertificateSource$NoPreloadHolder;->INSTANCE:Landroid/security/net/config/SystemCertificateSource;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 32
    new-instance v0, Landroid/security/net/config/SystemCertificateSource;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/security/net/config/SystemCertificateSource;-><init>(Landroid/security/net/config/SystemCertificateSource-IA;)V

    sput-object v0, Landroid/security/net/config/SystemCertificateSource$NoPreloadHolder;->INSTANCE:Landroid/security/net/config/SystemCertificateSource;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
