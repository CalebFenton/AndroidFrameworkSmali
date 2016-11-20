.class public final enum Ljava/security/CryptoPrimitive;
.super Ljava/lang/Enum;
.source "CryptoPrimitive.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/security/CryptoPrimitive;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/security/CryptoPrimitive;

.field public static final enum BLOCK_CIPHER:Ljava/security/CryptoPrimitive;

.field public static final enum KEY_AGREEMENT:Ljava/security/CryptoPrimitive;

.field public static final enum KEY_ENCAPSULATION:Ljava/security/CryptoPrimitive;

.field public static final enum KEY_WRAP:Ljava/security/CryptoPrimitive;

.field public static final enum MAC:Ljava/security/CryptoPrimitive;

.field public static final enum MESSAGE_DIGEST:Ljava/security/CryptoPrimitive;

.field public static final enum PUBLIC_KEY_ENCRYPTION:Ljava/security/CryptoPrimitive;

.field public static final enum SECURE_RANDOM:Ljava/security/CryptoPrimitive;

.field public static final enum SIGNATURE:Ljava/security/CryptoPrimitive;

.field public static final enum STREAM_CIPHER:Ljava/security/CryptoPrimitive;


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
    .line 34
    new-instance v0, Ljava/security/CryptoPrimitive;

    #@7
    const-string/jumbo v1, "MESSAGE_DIGEST"

    #@a
    invoke-direct {v0, v1, v3}, Ljava/security/CryptoPrimitive;-><init>(Ljava/lang/String;I)V

    #@d
    .line 37
    sput-object v0, Ljava/security/CryptoPrimitive;->MESSAGE_DIGEST:Ljava/security/CryptoPrimitive;

    #@f
    .line 39
    new-instance v0, Ljava/security/CryptoPrimitive;

    #@11
    const-string/jumbo v1, "SECURE_RANDOM"

    #@14
    invoke-direct {v0, v1, v4}, Ljava/security/CryptoPrimitive;-><init>(Ljava/lang/String;I)V

    #@17
    .line 42
    sput-object v0, Ljava/security/CryptoPrimitive;->SECURE_RANDOM:Ljava/security/CryptoPrimitive;

    #@19
    .line 44
    new-instance v0, Ljava/security/CryptoPrimitive;

    #@1b
    const-string/jumbo v1, "BLOCK_CIPHER"

    #@1e
    invoke-direct {v0, v1, v5}, Ljava/security/CryptoPrimitive;-><init>(Ljava/lang/String;I)V

    #@21
    .line 47
    sput-object v0, Ljava/security/CryptoPrimitive;->BLOCK_CIPHER:Ljava/security/CryptoPrimitive;

    #@23
    .line 49
    new-instance v0, Ljava/security/CryptoPrimitive;

    #@25
    const-string/jumbo v1, "STREAM_CIPHER"

    #@28
    invoke-direct {v0, v1, v6}, Ljava/security/CryptoPrimitive;-><init>(Ljava/lang/String;I)V

    #@2b
    .line 52
    sput-object v0, Ljava/security/CryptoPrimitive;->STREAM_CIPHER:Ljava/security/CryptoPrimitive;

    #@2d
    .line 54
    new-instance v0, Ljava/security/CryptoPrimitive;

    #@2f
    const-string/jumbo v1, "MAC"

    #@32
    invoke-direct {v0, v1, v7}, Ljava/security/CryptoPrimitive;-><init>(Ljava/lang/String;I)V

    #@35
    .line 57
    sput-object v0, Ljava/security/CryptoPrimitive;->MAC:Ljava/security/CryptoPrimitive;

    #@37
    .line 59
    new-instance v0, Ljava/security/CryptoPrimitive;

    #@39
    const-string/jumbo v1, "KEY_WRAP"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Ljava/security/CryptoPrimitive;-><init>(Ljava/lang/String;I)V

    #@40
    .line 62
    sput-object v0, Ljava/security/CryptoPrimitive;->KEY_WRAP:Ljava/security/CryptoPrimitive;

    #@42
    .line 64
    new-instance v0, Ljava/security/CryptoPrimitive;

    #@44
    const-string/jumbo v1, "PUBLIC_KEY_ENCRYPTION"

    #@47
    const/4 v2, 0x6

    #@48
    invoke-direct {v0, v1, v2}, Ljava/security/CryptoPrimitive;-><init>(Ljava/lang/String;I)V

    #@4b
    .line 67
    sput-object v0, Ljava/security/CryptoPrimitive;->PUBLIC_KEY_ENCRYPTION:Ljava/security/CryptoPrimitive;

    #@4d
    .line 69
    new-instance v0, Ljava/security/CryptoPrimitive;

    #@4f
    const-string/jumbo v1, "SIGNATURE"

    #@52
    const/4 v2, 0x7

    #@53
    invoke-direct {v0, v1, v2}, Ljava/security/CryptoPrimitive;-><init>(Ljava/lang/String;I)V

    #@56
    .line 72
    sput-object v0, Ljava/security/CryptoPrimitive;->SIGNATURE:Ljava/security/CryptoPrimitive;

    #@58
    .line 74
    new-instance v0, Ljava/security/CryptoPrimitive;

    #@5a
    const-string/jumbo v1, "KEY_ENCAPSULATION"

    #@5d
    const/16 v2, 0x8

    #@5f
    invoke-direct {v0, v1, v2}, Ljava/security/CryptoPrimitive;-><init>(Ljava/lang/String;I)V

    #@62
    .line 77
    sput-object v0, Ljava/security/CryptoPrimitive;->KEY_ENCAPSULATION:Ljava/security/CryptoPrimitive;

    #@64
    .line 79
    new-instance v0, Ljava/security/CryptoPrimitive;

    #@66
    const-string/jumbo v1, "KEY_AGREEMENT"

    #@69
    const/16 v2, 0x9

    #@6b
    invoke-direct {v0, v1, v2}, Ljava/security/CryptoPrimitive;-><init>(Ljava/lang/String;I)V

    #@6e
    .line 82
    sput-object v0, Ljava/security/CryptoPrimitive;->KEY_AGREEMENT:Ljava/security/CryptoPrimitive;

    #@70
    .line 33
    const/16 v0, 0xa

    #@72
    new-array v0, v0, [Ljava/security/CryptoPrimitive;

    #@74
    sget-object v1, Ljava/security/CryptoPrimitive;->MESSAGE_DIGEST:Ljava/security/CryptoPrimitive;

    #@76
    aput-object v1, v0, v3

    #@78
    sget-object v1, Ljava/security/CryptoPrimitive;->SECURE_RANDOM:Ljava/security/CryptoPrimitive;

    #@7a
    aput-object v1, v0, v4

    #@7c
    sget-object v1, Ljava/security/CryptoPrimitive;->BLOCK_CIPHER:Ljava/security/CryptoPrimitive;

    #@7e
    aput-object v1, v0, v5

    #@80
    sget-object v1, Ljava/security/CryptoPrimitive;->STREAM_CIPHER:Ljava/security/CryptoPrimitive;

    #@82
    aput-object v1, v0, v6

    #@84
    sget-object v1, Ljava/security/CryptoPrimitive;->MAC:Ljava/security/CryptoPrimitive;

    #@86
    aput-object v1, v0, v7

    #@88
    sget-object v1, Ljava/security/CryptoPrimitive;->KEY_WRAP:Ljava/security/CryptoPrimitive;

    #@8a
    const/4 v2, 0x5

    #@8b
    aput-object v1, v0, v2

    #@8d
    sget-object v1, Ljava/security/CryptoPrimitive;->PUBLIC_KEY_ENCRYPTION:Ljava/security/CryptoPrimitive;

    #@8f
    const/4 v2, 0x6

    #@90
    aput-object v1, v0, v2

    #@92
    sget-object v1, Ljava/security/CryptoPrimitive;->SIGNATURE:Ljava/security/CryptoPrimitive;

    #@94
    const/4 v2, 0x7

    #@95
    aput-object v1, v0, v2

    #@97
    sget-object v1, Ljava/security/CryptoPrimitive;->KEY_ENCAPSULATION:Ljava/security/CryptoPrimitive;

    #@99
    const/16 v2, 0x8

    #@9b
    aput-object v1, v0, v2

    #@9d
    sget-object v1, Ljava/security/CryptoPrimitive;->KEY_AGREEMENT:Ljava/security/CryptoPrimitive;

    #@9f
    const/16 v2, 0x9

    #@a1
    aput-object v1, v0, v2

    #@a3
    sput-object v0, Ljava/security/CryptoPrimitive;->$VALUES:[Ljava/security/CryptoPrimitive;

    #@a5
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/security/CryptoPrimitive;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 33
    const-class v0, Ljava/security/CryptoPrimitive;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/security/CryptoPrimitive;

    #@8
    return-object v0
.end method

.method public static values()[Ljava/security/CryptoPrimitive;
    .locals 1

    #@0
    .prologue
    .line 33
    sget-object v0, Ljava/security/CryptoPrimitive;->$VALUES:[Ljava/security/CryptoPrimitive;

    #@2
    return-object v0
.end method
