.class Lsun/security/jca/JCAUtil$CachedSecureRandomHolder;
.super Ljava/lang/Object;
.source "JCAUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/jca/JCAUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedSecureRandomHolder"
.end annotation


# static fields
.field public static blacklist instance:Ljava/security/SecureRandom;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 58
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lsun/security/jca/JCAUtil$CachedSecureRandomHolder;->instance:Ljava/security/SecureRandom;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
