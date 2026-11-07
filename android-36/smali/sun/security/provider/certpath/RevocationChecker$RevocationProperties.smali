.class Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;
.super Ljava/lang/Object;
.source "RevocationChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/provider/certpath/RevocationChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RevocationProperties"
.end annotation


# instance fields
.field blacklist crlDPEnabled:Z

.field blacklist ocspEnabled:Z

.field blacklist ocspIssuer:Ljava/lang/String;

.field blacklist ocspSerial:Ljava/lang/String;

.field blacklist ocspSubject:Ljava/lang/String;

.field blacklist ocspUrl:Ljava/lang/String;

.field blacklist onlyEE:Z


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lsun/security/provider/certpath/RevocationChecker-IA;)V
    .registers 2

    invoke-direct {p0}, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;-><init>()V

    return-void
.end method
