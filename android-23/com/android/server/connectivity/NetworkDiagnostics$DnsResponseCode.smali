.class public final enum Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;
.super Ljava/lang/Enum;
.source "NetworkDiagnostics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkDiagnostics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DnsResponseCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

.field public static final enum FORMERR:Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

.field public static final enum NOERROR:Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

.field public static final enum NOTIMP:Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

.field public static final enum NXDOMAIN:Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

.field public static final enum REFUSED:Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

.field public static final enum SERVFAIL:Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 94
    new-instance v0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    #@7
    const-string/jumbo v1, "NOERROR"

    #@a
    invoke-direct {v0, v1, v3}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->NOERROR:Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    #@f
    new-instance v0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    #@11
    const-string/jumbo v1, "FORMERR"

    #@14
    invoke-direct {v0, v1, v4}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->FORMERR:Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    #@19
    new-instance v0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    #@1b
    const-string/jumbo v1, "SERVFAIL"

    #@1e
    invoke-direct {v0, v1, v5}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->SERVFAIL:Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    #@23
    new-instance v0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    #@25
    const-string/jumbo v1, "NXDOMAIN"

    #@28
    invoke-direct {v0, v1, v6}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;-><init>(Ljava/lang/String;I)V

    #@2b
    sput-object v0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->NXDOMAIN:Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    #@2d
    new-instance v0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    #@2f
    const-string/jumbo v1, "NOTIMP"

    #@32
    invoke-direct {v0, v1, v7}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;-><init>(Ljava/lang/String;I)V

    #@35
    sput-object v0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->NOTIMP:Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    #@37
    new-instance v0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    #@39
    const-string/jumbo v1, "REFUSED"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;-><init>(Ljava/lang/String;I)V

    #@40
    sput-object v0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->REFUSED:Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    #@42
    const/4 v0, 0x6

    #@43
    new-array v0, v0, [Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    #@45
    sget-object v1, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->NOERROR:Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    #@47
    aput-object v1, v0, v3

    #@49
    sget-object v1, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->FORMERR:Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    #@4b
    aput-object v1, v0, v4

    #@4d
    sget-object v1, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->SERVFAIL:Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    #@4f
    aput-object v1, v0, v5

    #@51
    sget-object v1, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->NXDOMAIN:Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    #@53
    aput-object v1, v0, v6

    #@55
    sget-object v1, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->NOTIMP:Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    #@57
    aput-object v1, v0, v7

    #@59
    sget-object v1, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->REFUSED:Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    #@5b
    const/4 v2, 0x5

    #@5c
    aput-object v1, v0, v2

    #@5e
    sput-object v0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->$VALUES:[Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    #@60
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 94
    const-class v0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;
    .locals 1

    #@0
    .prologue
    .line 94
    sget-object v0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->$VALUES:[Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    #@2
    return-object v0
.end method
