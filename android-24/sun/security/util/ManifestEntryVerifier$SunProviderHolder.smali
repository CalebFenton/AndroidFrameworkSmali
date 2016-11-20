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
.field private static final instance:Ljava/security/Provider;


# direct methods
.method static synthetic -get0()Ljava/security/Provider;
    .locals 1

    #@0
    sget-object v0, Lsun/security/util/ManifestEntryVerifier$SunProviderHolder;->instance:Ljava/security/Provider;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 54
    invoke-static {}, Lsun/security/jca/Providers;->getSunProvider()Ljava/security/Provider;

    #@3
    move-result-object v0

    #@4
    sput-object v0, Lsun/security/util/ManifestEntryVerifier$SunProviderHolder;->instance:Ljava/security/Provider;

    #@6
    .line 53
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
