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
.field crlDPEnabled:Z

.field ocspEnabled:Z

.field ocspIssuer:Ljava/lang/String;

.field ocspSerial:Ljava/lang/String;

.field ocspSubject:Ljava/lang/String;

.field ocspUrl:Ljava/lang/String;

.field onlyEE:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;-><init>()V

    #@3
    return-void
.end method
