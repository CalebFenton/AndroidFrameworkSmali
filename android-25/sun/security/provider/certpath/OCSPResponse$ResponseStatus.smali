.class public final enum Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;
.super Ljava/lang/Enum;
.source "OCSPResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/provider/certpath/OCSPResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResponseStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

.field public static final enum INTERNAL_ERROR:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

.field public static final enum MALFORMED_REQUEST:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

.field public static final enum SIG_REQUIRED:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

.field public static final enum SUCCESSFUL:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

.field public static final enum TRY_LATER:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

.field public static final enum UNAUTHORIZED:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

.field public static final enum UNUSED:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;


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
    .line 124
    new-instance v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    #@7
    const-string/jumbo v1, "SUCCESSFUL"

    #@a
    invoke-direct {v0, v1, v3}, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->SUCCESSFUL:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    #@f
    new-instance v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    #@11
    const-string/jumbo v1, "MALFORMED_REQUEST"

    #@14
    invoke-direct {v0, v1, v4}, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;-><init>(Ljava/lang/String;I)V

    #@17
    .line 125
    sput-object v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->MALFORMED_REQUEST:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    #@19
    new-instance v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    #@1b
    const-string/jumbo v1, "INTERNAL_ERROR"

    #@1e
    invoke-direct {v0, v1, v5}, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;-><init>(Ljava/lang/String;I)V

    #@21
    .line 126
    sput-object v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->INTERNAL_ERROR:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    #@23
    new-instance v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    #@25
    const-string/jumbo v1, "TRY_LATER"

    #@28
    invoke-direct {v0, v1, v6}, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;-><init>(Ljava/lang/String;I)V

    #@2b
    .line 127
    sput-object v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->TRY_LATER:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    #@2d
    new-instance v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    #@2f
    const-string/jumbo v1, "UNUSED"

    #@32
    invoke-direct {v0, v1, v7}, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;-><init>(Ljava/lang/String;I)V

    #@35
    .line 128
    sput-object v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->UNUSED:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    #@37
    new-instance v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    #@39
    const-string/jumbo v1, "SIG_REQUIRED"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;-><init>(Ljava/lang/String;I)V

    #@40
    .line 129
    sput-object v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->SIG_REQUIRED:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    #@42
    new-instance v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    #@44
    const-string/jumbo v1, "UNAUTHORIZED"

    #@47
    const/4 v2, 0x6

    #@48
    invoke-direct {v0, v1, v2}, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;-><init>(Ljava/lang/String;I)V

    #@4b
    .line 130
    sput-object v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->UNAUTHORIZED:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    #@4d
    .line 123
    const/4 v0, 0x7

    #@4e
    new-array v0, v0, [Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    #@50
    sget-object v1, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->SUCCESSFUL:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    #@52
    aput-object v1, v0, v3

    #@54
    sget-object v1, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->MALFORMED_REQUEST:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    #@56
    aput-object v1, v0, v4

    #@58
    sget-object v1, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->INTERNAL_ERROR:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    #@5a
    aput-object v1, v0, v5

    #@5c
    sget-object v1, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->TRY_LATER:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    #@5e
    aput-object v1, v0, v6

    #@60
    sget-object v1, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->UNUSED:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    #@62
    aput-object v1, v0, v7

    #@64
    sget-object v1, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->SIG_REQUIRED:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    #@66
    const/4 v2, 0x5

    #@67
    aput-object v1, v0, v2

    #@69
    sget-object v1, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->UNAUTHORIZED:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    #@6b
    const/4 v2, 0x6

    #@6c
    aput-object v1, v0, v2

    #@6e
    sput-object v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->$VALUES:[Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    #@70
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 123
    const-class v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    #@8
    return-object v0
.end method

.method public static values()[Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;
    .locals 1

    #@0
    .prologue
    .line 123
    sget-object v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->$VALUES:[Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    #@2
    return-object v0
.end method
