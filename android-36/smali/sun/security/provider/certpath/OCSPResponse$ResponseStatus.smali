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
        "Ljava/lang/Enum<",
        "Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

.field public static final enum blacklist INTERNAL_ERROR:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

.field public static final enum blacklist MALFORMED_REQUEST:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

.field public static final enum blacklist SIG_REQUIRED:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

.field public static final enum blacklist SUCCESSFUL:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

.field public static final enum blacklist TRY_LATER:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

.field public static final enum blacklist UNAUTHORIZED:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

.field public static final enum blacklist UNUSED:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;


# direct methods
.method private static synthetic blacklist $values()[Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;
    .registers 7

    .line 123
    sget-object v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->SUCCESSFUL:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    sget-object v1, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->MALFORMED_REQUEST:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    sget-object v2, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->INTERNAL_ERROR:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    sget-object v3, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->TRY_LATER:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    sget-object v4, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->UNUSED:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    sget-object v5, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->SIG_REQUIRED:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    sget-object v6, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->UNAUTHORIZED:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    filled-new-array/range {v0 .. v6}, [Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 124
    new-instance v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    const-string v1, "SUCCESSFUL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->SUCCESSFUL:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    .line 125
    new-instance v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    const-string v1, "MALFORMED_REQUEST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->MALFORMED_REQUEST:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    .line 126
    new-instance v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    const-string v1, "INTERNAL_ERROR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->INTERNAL_ERROR:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    .line 127
    new-instance v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    const-string v1, "TRY_LATER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->TRY_LATER:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    .line 128
    new-instance v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    const-string v1, "UNUSED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->UNUSED:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    .line 129
    new-instance v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    const-string v1, "SIG_REQUIRED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->SIG_REQUIRED:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    .line 130
    new-instance v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    const-string v1, "UNAUTHORIZED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->UNAUTHORIZED:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    .line 123
    invoke-static {}, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->$values()[Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->$VALUES:[Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 123
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 123
    const-class v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    return-object v0
.end method

.method public static blacklist values()[Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;
    .registers 1

    .line 123
    sget-object v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->$VALUES:[Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    invoke-virtual {v0}, [Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    return-object v0
.end method
