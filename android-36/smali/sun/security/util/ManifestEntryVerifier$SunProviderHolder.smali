.class Lsun/security/util/ManifestEntryVerifier$SunProviderHolder;
.super Ljava/lang/Object;
.source "ManifestEntryVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/util/ManifestEntryVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SunProviderHolder"
.end annotation


# static fields
.field private static final greylist-max-o instance:Ljava/security/Provider;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetinstance()Ljava/security/Provider;
    .registers 1

    sget-object v0, Lsun/security/util/ManifestEntryVerifier$SunProviderHolder;->instance:Ljava/security/Provider;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 54
    invoke-static {}, Lsun/security/jca/Providers;->getSunProvider()Ljava/security/Provider;

    move-result-object v0

    sput-object v0, Lsun/security/util/ManifestEntryVerifier$SunProviderHolder;->instance:Ljava/security/Provider;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
