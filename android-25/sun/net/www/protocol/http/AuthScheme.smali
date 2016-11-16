.class public final enum Lsun/net/www/protocol/http/AuthScheme;
.super Ljava/lang/Enum;
.source "AuthScheme.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsun/net/www/protocol/http/AuthScheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsun/net/www/protocol/http/AuthScheme;

.field public static final enum BASIC:Lsun/net/www/protocol/http/AuthScheme;

.field public static final enum DIGEST:Lsun/net/www/protocol/http/AuthScheme;

.field public static final enum KERBEROS:Lsun/net/www/protocol/http/AuthScheme;

.field public static final enum NEGOTIATE:Lsun/net/www/protocol/http/AuthScheme;

.field public static final enum NTLM:Lsun/net/www/protocol/http/AuthScheme;

.field public static final enum UNKNOWN:Lsun/net/www/protocol/http/AuthScheme;


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
    .line 31
    new-instance v0, Lsun/net/www/protocol/http/AuthScheme;

    #@7
    const-string/jumbo v1, "BASIC"

    #@a
    invoke-direct {v0, v1, v3}, Lsun/net/www/protocol/http/AuthScheme;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Lsun/net/www/protocol/http/AuthScheme;->BASIC:Lsun/net/www/protocol/http/AuthScheme;

    #@f
    .line 32
    new-instance v0, Lsun/net/www/protocol/http/AuthScheme;

    #@11
    const-string/jumbo v1, "DIGEST"

    #@14
    invoke-direct {v0, v1, v4}, Lsun/net/www/protocol/http/AuthScheme;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Lsun/net/www/protocol/http/AuthScheme;->DIGEST:Lsun/net/www/protocol/http/AuthScheme;

    #@19
    .line 33
    new-instance v0, Lsun/net/www/protocol/http/AuthScheme;

    #@1b
    const-string/jumbo v1, "NTLM"

    #@1e
    invoke-direct {v0, v1, v5}, Lsun/net/www/protocol/http/AuthScheme;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Lsun/net/www/protocol/http/AuthScheme;->NTLM:Lsun/net/www/protocol/http/AuthScheme;

    #@23
    .line 34
    new-instance v0, Lsun/net/www/protocol/http/AuthScheme;

    #@25
    const-string/jumbo v1, "NEGOTIATE"

    #@28
    invoke-direct {v0, v1, v6}, Lsun/net/www/protocol/http/AuthScheme;-><init>(Ljava/lang/String;I)V

    #@2b
    sput-object v0, Lsun/net/www/protocol/http/AuthScheme;->NEGOTIATE:Lsun/net/www/protocol/http/AuthScheme;

    #@2d
    .line 35
    new-instance v0, Lsun/net/www/protocol/http/AuthScheme;

    #@2f
    const-string/jumbo v1, "KERBEROS"

    #@32
    invoke-direct {v0, v1, v7}, Lsun/net/www/protocol/http/AuthScheme;-><init>(Ljava/lang/String;I)V

    #@35
    sput-object v0, Lsun/net/www/protocol/http/AuthScheme;->KERBEROS:Lsun/net/www/protocol/http/AuthScheme;

    #@37
    .line 36
    new-instance v0, Lsun/net/www/protocol/http/AuthScheme;

    #@39
    const-string/jumbo v1, "UNKNOWN"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Lsun/net/www/protocol/http/AuthScheme;-><init>(Ljava/lang/String;I)V

    #@40
    sput-object v0, Lsun/net/www/protocol/http/AuthScheme;->UNKNOWN:Lsun/net/www/protocol/http/AuthScheme;

    #@42
    .line 30
    const/4 v0, 0x6

    #@43
    new-array v0, v0, [Lsun/net/www/protocol/http/AuthScheme;

    #@45
    sget-object v1, Lsun/net/www/protocol/http/AuthScheme;->BASIC:Lsun/net/www/protocol/http/AuthScheme;

    #@47
    aput-object v1, v0, v3

    #@49
    sget-object v1, Lsun/net/www/protocol/http/AuthScheme;->DIGEST:Lsun/net/www/protocol/http/AuthScheme;

    #@4b
    aput-object v1, v0, v4

    #@4d
    sget-object v1, Lsun/net/www/protocol/http/AuthScheme;->NTLM:Lsun/net/www/protocol/http/AuthScheme;

    #@4f
    aput-object v1, v0, v5

    #@51
    sget-object v1, Lsun/net/www/protocol/http/AuthScheme;->NEGOTIATE:Lsun/net/www/protocol/http/AuthScheme;

    #@53
    aput-object v1, v0, v6

    #@55
    sget-object v1, Lsun/net/www/protocol/http/AuthScheme;->KERBEROS:Lsun/net/www/protocol/http/AuthScheme;

    #@57
    aput-object v1, v0, v7

    #@59
    sget-object v1, Lsun/net/www/protocol/http/AuthScheme;->UNKNOWN:Lsun/net/www/protocol/http/AuthScheme;

    #@5b
    const/4 v2, 0x5

    #@5c
    aput-object v1, v0, v2

    #@5e
    sput-object v0, Lsun/net/www/protocol/http/AuthScheme;->$VALUES:[Lsun/net/www/protocol/http/AuthScheme;

    #@60
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsun/net/www/protocol/http/AuthScheme;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 30
    const-class v0, Lsun/net/www/protocol/http/AuthScheme;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lsun/net/www/protocol/http/AuthScheme;

    #@8
    return-object v0
.end method

.method public static values()[Lsun/net/www/protocol/http/AuthScheme;
    .locals 1

    #@0
    .prologue
    .line 30
    sget-object v0, Lsun/net/www/protocol/http/AuthScheme;->$VALUES:[Lsun/net/www/protocol/http/AuthScheme;

    #@2
    return-object v0
.end method
