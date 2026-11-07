.class synthetic Lsun/security/provider/certpath/RevocationChecker$2;
.super Ljava/lang/Object;
.source "RevocationChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/provider/certpath/RevocationChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $SwitchMap$java$security$cert$PKIXRevocationChecker$Option:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 112
    invoke-static {}, Ljava/security/cert/PKIXRevocationChecker$Option;->values()[Ljava/security/cert/PKIXRevocationChecker$Option;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lsun/security/provider/certpath/RevocationChecker$2;->$SwitchMap$java$security$cert$PKIXRevocationChecker$Option:[I

    :try_start_9
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker$2;->$SwitchMap$java$security$cert$PKIXRevocationChecker$Option:[I

    sget-object v1, Ljava/security/cert/PKIXRevocationChecker$Option;->ONLY_END_ENTITY:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-virtual {v1}, Ljava/security/cert/PKIXRevocationChecker$Option;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v0

    :goto_16
    :try_start_16
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker$2;->$SwitchMap$java$security$cert$PKIXRevocationChecker$Option:[I

    sget-object v1, Ljava/security/cert/PKIXRevocationChecker$Option;->PREFER_CRLS:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-virtual {v1}, Ljava/security/cert/PKIXRevocationChecker$Option;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v0

    :goto_23
    :try_start_23
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker$2;->$SwitchMap$java$security$cert$PKIXRevocationChecker$Option:[I

    sget-object v1, Ljava/security/cert/PKIXRevocationChecker$Option;->SOFT_FAIL:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-virtual {v1}, Ljava/security/cert/PKIXRevocationChecker$Option;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-exception v0

    :goto_30
    :try_start_30
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker$2;->$SwitchMap$java$security$cert$PKIXRevocationChecker$Option:[I

    sget-object v1, Ljava/security/cert/PKIXRevocationChecker$Option;->NO_FALLBACK:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-virtual {v1}, Ljava/security/cert/PKIXRevocationChecker$Option;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_3b} :catch_3c

    goto :goto_3d

    :catch_3c
    move-exception v0

    :goto_3d
    return-void
.end method
