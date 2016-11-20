.class final enum Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;
.super Ljava/lang/Enum;
.source "SignatureAndHashAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/SignatureAndHashAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "HashAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

.field public static final enum MD5:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

.field public static final enum NONE:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

.field public static final enum SHA1:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

.field public static final enum SHA224:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

.field public static final enum SHA256:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

.field public static final enum SHA384:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

.field public static final enum SHA512:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

.field public static final enum UNDEFINED:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;


# instance fields
.field final length:I

.field final name:Ljava/lang/String;

.field final standardName:Ljava/lang/String;

.field final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    .line 315
    new-instance v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@2
    const-string/jumbo v1, "UNDEFINED"

    #@5
    const-string/jumbo v3, "undefined"

    #@8
    const-string/jumbo v4, ""

    #@b
    const/4 v2, 0x0

    #@c
    const/4 v5, -0x1

    #@d
    const/4 v6, -0x1

    #@e
    invoke-direct/range {v0 .. v6}, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    #@11
    sput-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->UNDEFINED:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@13
    .line 316
    new-instance v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@15
    const-string/jumbo v1, "NONE"

    #@18
    const-string/jumbo v3, "none"

    #@1b
    const-string/jumbo v4, "NONE"

    #@1e
    const/4 v2, 0x1

    #@1f
    const/4 v5, 0x0

    #@20
    const/4 v6, -0x1

    #@21
    invoke-direct/range {v0 .. v6}, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    #@24
    sput-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->NONE:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@26
    .line 317
    new-instance v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@28
    const-string/jumbo v1, "MD5"

    #@2b
    const-string/jumbo v3, "md5"

    #@2e
    const-string/jumbo v4, "MD5"

    #@31
    const/4 v2, 0x2

    #@32
    const/4 v5, 0x1

    #@33
    const/16 v6, 0x10

    #@35
    invoke-direct/range {v0 .. v6}, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    #@38
    sput-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->MD5:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@3a
    .line 318
    new-instance v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@3c
    const-string/jumbo v1, "SHA1"

    #@3f
    const-string/jumbo v3, "sha1"

    #@42
    const-string/jumbo v4, "SHA-1"

    #@45
    const/4 v2, 0x3

    #@46
    const/4 v5, 0x2

    #@47
    const/16 v6, 0x14

    #@49
    invoke-direct/range {v0 .. v6}, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    #@4c
    sput-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA1:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@4e
    .line 319
    new-instance v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@50
    const-string/jumbo v1, "SHA224"

    #@53
    const-string/jumbo v3, "sha224"

    #@56
    const-string/jumbo v4, "SHA-224"

    #@59
    const/4 v2, 0x4

    #@5a
    const/4 v5, 0x3

    #@5b
    const/16 v6, 0x1c

    #@5d
    invoke-direct/range {v0 .. v6}, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    #@60
    sput-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA224:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@62
    .line 320
    new-instance v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@64
    const-string/jumbo v1, "SHA256"

    #@67
    const-string/jumbo v3, "sha256"

    #@6a
    const-string/jumbo v4, "SHA-256"

    #@6d
    const/4 v2, 0x5

    #@6e
    const/4 v5, 0x4

    #@6f
    const/16 v6, 0x20

    #@71
    invoke-direct/range {v0 .. v6}, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    #@74
    sput-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA256:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@76
    .line 321
    new-instance v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@78
    const-string/jumbo v1, "SHA384"

    #@7b
    const-string/jumbo v3, "sha384"

    #@7e
    const-string/jumbo v4, "SHA-384"

    #@81
    const/4 v2, 0x6

    #@82
    const/4 v5, 0x5

    #@83
    const/16 v6, 0x30

    #@85
    invoke-direct/range {v0 .. v6}, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    #@88
    sput-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA384:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@8a
    .line 322
    new-instance v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@8c
    const-string/jumbo v1, "SHA512"

    #@8f
    const-string/jumbo v3, "sha512"

    #@92
    const-string/jumbo v4, "SHA-512"

    #@95
    const/4 v2, 0x7

    #@96
    const/4 v5, 0x6

    #@97
    const/16 v6, 0x40

    #@99
    invoke-direct/range {v0 .. v6}, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    #@9c
    sput-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA512:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@9e
    .line 314
    const/16 v0, 0x8

    #@a0
    new-array v0, v0, [Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@a2
    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->UNDEFINED:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@a4
    const/4 v2, 0x0

    #@a5
    aput-object v1, v0, v2

    #@a7
    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->NONE:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@a9
    const/4 v2, 0x1

    #@aa
    aput-object v1, v0, v2

    #@ac
    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->MD5:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@ae
    const/4 v2, 0x2

    #@af
    aput-object v1, v0, v2

    #@b1
    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA1:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@b3
    const/4 v2, 0x3

    #@b4
    aput-object v1, v0, v2

    #@b6
    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA224:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@b8
    const/4 v2, 0x4

    #@b9
    aput-object v1, v0, v2

    #@bb
    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA256:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@bd
    const/4 v2, 0x5

    #@be
    aput-object v1, v0, v2

    #@c0
    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA384:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@c2
    const/4 v2, 0x6

    #@c3
    aput-object v1, v0, v2

    #@c5
    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA512:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@c7
    const/4 v2, 0x7

    #@c8
    aput-object v1, v0, v2

    #@ca
    sput-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->$VALUES:[Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@cc
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "standardName"    # Ljava/lang/String;
    .param p5, "value"    # I
    .param p6, "length"    # I

    #@0
    .prologue
    .line 331
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 333
    iput-object p3, p0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->name:Ljava/lang/String;

    #@5
    .line 334
    iput-object p4, p0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->standardName:Ljava/lang/String;

    #@7
    .line 335
    iput p5, p0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->value:I

    #@9
    .line 336
    iput p6, p0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->length:I

    #@b
    .line 332
    return-void
.end method

.method static valueOf(I)Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;
    .locals 1
    .param p0, "value"    # I

    #@0
    .prologue
    .line 340
    sget-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->UNDEFINED:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@2
    .line 341
    .local v0, "algorithm":Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;
    packed-switch p0, :pswitch_data_0

    #@5
    .line 365
    :goto_0
    return-object v0

    #@6
    .line 343
    :pswitch_0
    sget-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->NONE:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@8
    goto :goto_0

    #@9
    .line 346
    :pswitch_1
    sget-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->MD5:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@b
    goto :goto_0

    #@c
    .line 349
    :pswitch_2
    sget-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA1:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@e
    goto :goto_0

    #@f
    .line 352
    :pswitch_3
    sget-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA224:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@11
    goto :goto_0

    #@12
    .line 355
    :pswitch_4
    sget-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA256:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@14
    goto :goto_0

    #@15
    .line 358
    :pswitch_5
    sget-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA384:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@17
    goto :goto_0

    #@18
    .line 361
    :pswitch_6
    sget-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA512:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@1a
    goto :goto_0

    #@1b
    .line 341
    nop

    #@1c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 314
    const-class v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@8
    return-object v0
.end method

.method public static values()[Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;
    .locals 1

    #@0
    .prologue
    .line 314
    sget-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->$VALUES:[Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@2
    return-object v0
.end method
