.class final enum Lsun/security/ssl/CipherSuite$KeyExchange;
.super Ljava/lang/Enum;
.source "CipherSuite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/CipherSuite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "KeyExchange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsun/security/ssl/CipherSuite$KeyExchange;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsun/security/ssl/CipherSuite$KeyExchange;

.field public static final enum K_DHE_DSS:Lsun/security/ssl/CipherSuite$KeyExchange;

.field public static final enum K_DHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

.field public static final enum K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

.field public static final enum K_DH_DSS:Lsun/security/ssl/CipherSuite$KeyExchange;

.field public static final enum K_DH_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

.field public static final enum K_ECDHE_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

.field public static final enum K_ECDHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

.field public static final enum K_ECDH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

.field public static final enum K_ECDH_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

.field public static final enum K_ECDH_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

.field public static final enum K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

.field public static final enum K_KRB5_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

.field public static final enum K_NULL:Lsun/security/ssl/CipherSuite$KeyExchange;

.field public static final enum K_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

.field public static final enum K_RSA_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

.field public static final enum K_SCSV:Lsun/security/ssl/CipherSuite$KeyExchange;


# instance fields
.field final allowed:Z

.field private final alwaysAvailable:Z

.field final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x4

    #@1
    const/4 v8, 0x3

    #@2
    const/4 v7, 0x2

    #@3
    const/4 v6, 0x0

    #@4
    const/4 v5, 0x1

    #@5
    .line 331
    new-instance v0, Lsun/security/ssl/CipherSuite$KeyExchange;

    #@7
    const-string/jumbo v1, "K_NULL"

    #@a
    .line 332
    const-string/jumbo v2, "NULL"

    #@d
    .line 331
    invoke-direct {v0, v1, v6, v2, v6}, Lsun/security/ssl/CipherSuite$KeyExchange;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    #@10
    .line 332
    sput-object v0, Lsun/security/ssl/CipherSuite$KeyExchange;->K_NULL:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@12
    .line 333
    new-instance v0, Lsun/security/ssl/CipherSuite$KeyExchange;

    #@14
    const-string/jumbo v1, "K_RSA"

    #@17
    const-string/jumbo v2, "RSA"

    #@1a
    invoke-direct {v0, v1, v5, v2, v5}, Lsun/security/ssl/CipherSuite$KeyExchange;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    #@1d
    sput-object v0, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@1f
    .line 334
    new-instance v0, Lsun/security/ssl/CipherSuite$KeyExchange;

    #@21
    const-string/jumbo v1, "K_RSA_EXPORT"

    #@24
    const-string/jumbo v2, "RSA_EXPORT"

    #@27
    invoke-direct {v0, v1, v7, v2, v5}, Lsun/security/ssl/CipherSuite$KeyExchange;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    #@2a
    sput-object v0, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@2c
    .line 335
    new-instance v0, Lsun/security/ssl/CipherSuite$KeyExchange;

    #@2e
    const-string/jumbo v1, "K_DH_RSA"

    #@31
    const-string/jumbo v2, "DH_RSA"

    #@34
    invoke-direct {v0, v1, v8, v2, v6}, Lsun/security/ssl/CipherSuite$KeyExchange;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    #@37
    sput-object v0, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@39
    .line 336
    new-instance v0, Lsun/security/ssl/CipherSuite$KeyExchange;

    #@3b
    const-string/jumbo v1, "K_DH_DSS"

    #@3e
    const-string/jumbo v2, "DH_DSS"

    #@41
    invoke-direct {v0, v1, v9, v2, v6}, Lsun/security/ssl/CipherSuite$KeyExchange;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    #@44
    sput-object v0, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_DSS:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@46
    .line 337
    new-instance v0, Lsun/security/ssl/CipherSuite$KeyExchange;

    #@48
    const-string/jumbo v1, "K_DHE_DSS"

    #@4b
    const-string/jumbo v2, "DHE_DSS"

    #@4e
    const/4 v3, 0x5

    #@4f
    invoke-direct {v0, v1, v3, v2, v5}, Lsun/security/ssl/CipherSuite$KeyExchange;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    #@52
    sput-object v0, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_DSS:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@54
    .line 338
    new-instance v0, Lsun/security/ssl/CipherSuite$KeyExchange;

    #@56
    const-string/jumbo v1, "K_DHE_RSA"

    #@59
    const-string/jumbo v2, "DHE_RSA"

    #@5c
    const/4 v3, 0x6

    #@5d
    invoke-direct {v0, v1, v3, v2, v5}, Lsun/security/ssl/CipherSuite$KeyExchange;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    #@60
    sput-object v0, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@62
    .line 339
    new-instance v0, Lsun/security/ssl/CipherSuite$KeyExchange;

    #@64
    const-string/jumbo v1, "K_DH_ANON"

    #@67
    const-string/jumbo v2, "DH_anon"

    #@6a
    const/4 v3, 0x7

    #@6b
    invoke-direct {v0, v1, v3, v2, v5}, Lsun/security/ssl/CipherSuite$KeyExchange;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    #@6e
    sput-object v0, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@70
    .line 341
    new-instance v0, Lsun/security/ssl/CipherSuite$KeyExchange;

    #@72
    const-string/jumbo v1, "K_ECDH_ECDSA"

    #@75
    const-string/jumbo v2, "ECDH_ECDSA"

    #@78
    invoke-static {}, Lsun/security/ssl/CipherSuite;->-get0()Z

    #@7b
    move-result v3

    #@7c
    const/16 v4, 0x8

    #@7e
    invoke-direct {v0, v1, v4, v2, v3}, Lsun/security/ssl/CipherSuite$KeyExchange;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    #@81
    sput-object v0, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@83
    .line 342
    new-instance v0, Lsun/security/ssl/CipherSuite$KeyExchange;

    #@85
    const-string/jumbo v1, "K_ECDH_RSA"

    #@88
    const-string/jumbo v2, "ECDH_RSA"

    #@8b
    invoke-static {}, Lsun/security/ssl/CipherSuite;->-get0()Z

    #@8e
    move-result v3

    #@8f
    const/16 v4, 0x9

    #@91
    invoke-direct {v0, v1, v4, v2, v3}, Lsun/security/ssl/CipherSuite$KeyExchange;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    #@94
    sput-object v0, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@96
    .line 343
    new-instance v0, Lsun/security/ssl/CipherSuite$KeyExchange;

    #@98
    const-string/jumbo v1, "K_ECDHE_ECDSA"

    #@9b
    const-string/jumbo v2, "ECDHE_ECDSA"

    #@9e
    invoke-static {}, Lsun/security/ssl/CipherSuite;->-get0()Z

    #@a1
    move-result v3

    #@a2
    const/16 v4, 0xa

    #@a4
    invoke-direct {v0, v1, v4, v2, v3}, Lsun/security/ssl/CipherSuite$KeyExchange;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    #@a7
    sput-object v0, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@a9
    .line 344
    new-instance v0, Lsun/security/ssl/CipherSuite$KeyExchange;

    #@ab
    const-string/jumbo v1, "K_ECDHE_RSA"

    #@ae
    const-string/jumbo v2, "ECDHE_RSA"

    #@b1
    invoke-static {}, Lsun/security/ssl/CipherSuite;->-get0()Z

    #@b4
    move-result v3

    #@b5
    const/16 v4, 0xb

    #@b7
    invoke-direct {v0, v1, v4, v2, v3}, Lsun/security/ssl/CipherSuite$KeyExchange;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    #@ba
    sput-object v0, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@bc
    .line 345
    new-instance v0, Lsun/security/ssl/CipherSuite$KeyExchange;

    #@be
    const-string/jumbo v1, "K_ECDH_ANON"

    #@c1
    const-string/jumbo v2, "ECDH_anon"

    #@c4
    invoke-static {}, Lsun/security/ssl/CipherSuite;->-get0()Z

    #@c7
    move-result v3

    #@c8
    const/16 v4, 0xc

    #@ca
    invoke-direct {v0, v1, v4, v2, v3}, Lsun/security/ssl/CipherSuite$KeyExchange;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    #@cd
    sput-object v0, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@cf
    .line 347
    new-instance v0, Lsun/security/ssl/CipherSuite$KeyExchange;

    #@d1
    const-string/jumbo v1, "K_KRB5"

    #@d4
    .line 348
    const-string/jumbo v2, "KRB5"

    #@d7
    .line 347
    const/16 v3, 0xd

    #@d9
    invoke-direct {v0, v1, v3, v2, v5}, Lsun/security/ssl/CipherSuite$KeyExchange;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    #@dc
    .line 348
    sput-object v0, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@de
    .line 349
    new-instance v0, Lsun/security/ssl/CipherSuite$KeyExchange;

    #@e0
    const-string/jumbo v1, "K_KRB5_EXPORT"

    #@e3
    const-string/jumbo v2, "KRB5_EXPORT"

    #@e6
    const/16 v3, 0xe

    #@e8
    invoke-direct {v0, v1, v3, v2, v5}, Lsun/security/ssl/CipherSuite$KeyExchange;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    #@eb
    sput-object v0, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@ed
    .line 351
    new-instance v0, Lsun/security/ssl/CipherSuite$KeyExchange;

    #@ef
    const-string/jumbo v1, "K_SCSV"

    #@f2
    .line 352
    const-string/jumbo v2, "SCSV"

    #@f5
    .line 351
    const/16 v3, 0xf

    #@f7
    invoke-direct {v0, v1, v3, v2, v5}, Lsun/security/ssl/CipherSuite$KeyExchange;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    #@fa
    .line 352
    sput-object v0, Lsun/security/ssl/CipherSuite$KeyExchange;->K_SCSV:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@fc
    .line 329
    const/16 v0, 0x10

    #@fe
    new-array v0, v0, [Lsun/security/ssl/CipherSuite$KeyExchange;

    #@100
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_NULL:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@102
    aput-object v1, v0, v6

    #@104
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@106
    aput-object v1, v0, v5

    #@108
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@10a
    aput-object v1, v0, v7

    #@10c
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@10e
    aput-object v1, v0, v8

    #@110
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_DSS:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@112
    aput-object v1, v0, v9

    #@114
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_DSS:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@116
    const/4 v2, 0x5

    #@117
    aput-object v1, v0, v2

    #@119
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@11b
    const/4 v2, 0x6

    #@11c
    aput-object v1, v0, v2

    #@11e
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@120
    const/4 v2, 0x7

    #@121
    aput-object v1, v0, v2

    #@123
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@125
    const/16 v2, 0x8

    #@127
    aput-object v1, v0, v2

    #@129
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@12b
    const/16 v2, 0x9

    #@12d
    aput-object v1, v0, v2

    #@12f
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@131
    const/16 v2, 0xa

    #@133
    aput-object v1, v0, v2

    #@135
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@137
    const/16 v2, 0xb

    #@139
    aput-object v1, v0, v2

    #@13b
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@13d
    const/16 v2, 0xc

    #@13f
    aput-object v1, v0, v2

    #@141
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@143
    const/16 v2, 0xd

    #@145
    aput-object v1, v0, v2

    #@147
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@149
    const/16 v2, 0xe

    #@14b
    aput-object v1, v0, v2

    #@14d
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_SCSV:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@14f
    const/16 v2, 0xf

    #@151
    aput-object v1, v0, v2

    #@153
    sput-object v0, Lsun/security/ssl/CipherSuite$KeyExchange;->$VALUES:[Lsun/security/ssl/CipherSuite$KeyExchange;

    #@155
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 2
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "allowed"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 359
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@4
    .line 360
    iput-object p3, p0, Lsun/security/ssl/CipherSuite$KeyExchange;->name:Ljava/lang/String;

    #@6
    .line 361
    iput-boolean p4, p0, Lsun/security/ssl/CipherSuite$KeyExchange;->allowed:Z

    #@8
    .line 362
    if-eqz p4, :cond_0

    #@a
    .line 363
    const-string/jumbo v1, "EC"

    #@d
    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 362
    :cond_0
    :goto_0
    iput-boolean v0, p0, Lsun/security/ssl/CipherSuite$KeyExchange;->alwaysAvailable:Z

    #@15
    .line 359
    return-void

    #@16
    .line 363
    :cond_1
    const-string/jumbo v1, "KRB"

    #@19
    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1c
    move-result v1

    #@1d
    if-nez v1, :cond_0

    #@1f
    const/4 v0, 0x1

    #@20
    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lsun/security/ssl/CipherSuite$KeyExchange;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 329
    const-class v0, Lsun/security/ssl/CipherSuite$KeyExchange;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lsun/security/ssl/CipherSuite$KeyExchange;

    #@8
    return-object v0
.end method

.method public static values()[Lsun/security/ssl/CipherSuite$KeyExchange;
    .locals 1

    #@0
    .prologue
    .line 329
    sget-object v0, Lsun/security/ssl/CipherSuite$KeyExchange;->$VALUES:[Lsun/security/ssl/CipherSuite$KeyExchange;

    #@2
    return-object v0
.end method


# virtual methods
.method isAvailable()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 367
    iget-boolean v1, p0, Lsun/security/ssl/CipherSuite$KeyExchange;->alwaysAvailable:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 368
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 371
    :cond_0
    iget-object v1, p0, Lsun/security/ssl/CipherSuite$KeyExchange;->name:Ljava/lang/String;

    #@9
    const-string/jumbo v2, "EC"

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_2

    #@12
    .line 372
    iget-boolean v1, p0, Lsun/security/ssl/CipherSuite$KeyExchange;->allowed:Z

    #@14
    if-eqz v1, :cond_1

    #@16
    invoke-static {}, Lsun/security/ssl/JsseJce;->isEcAvailable()Z

    #@19
    move-result v0

    #@1a
    :cond_1
    return v0

    #@1b
    .line 373
    :cond_2
    iget-object v1, p0, Lsun/security/ssl/CipherSuite$KeyExchange;->name:Ljava/lang/String;

    #@1d
    const-string/jumbo v2, "KRB"

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@23
    move-result v1

    #@24
    if-eqz v1, :cond_4

    #@26
    .line 374
    iget-boolean v1, p0, Lsun/security/ssl/CipherSuite$KeyExchange;->allowed:Z

    #@28
    if-eqz v1, :cond_3

    #@2a
    invoke-static {}, Lsun/security/ssl/JsseJce;->isKerberosAvailable()Z

    #@2d
    move-result v0

    #@2e
    :cond_3
    return v0

    #@2f
    .line 376
    :cond_4
    iget-boolean v0, p0, Lsun/security/ssl/CipherSuite$KeyExchange;->allowed:Z

    #@31
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 381
    iget-object v0, p0, Lsun/security/ssl/CipherSuite$KeyExchange;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method
