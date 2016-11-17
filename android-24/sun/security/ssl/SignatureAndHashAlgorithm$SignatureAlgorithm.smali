.class final enum Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;
.super Ljava/lang/Enum;
.source "SignatureAndHashAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/SignatureAndHashAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SignatureAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

.field public static final enum ANONYMOUS:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

.field public static final enum DSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

.field public static final enum ECDSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

.field public static final enum RSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

.field public static final enum UNDEFINED:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;


# instance fields
.field final name:Ljava/lang/String;

.field final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x4

    #@1
    const/4 v7, 0x3

    #@2
    const/4 v6, 0x2

    #@3
    const/4 v5, 0x1

    #@4
    const/4 v4, 0x0

    #@5
    .line 370
    new-instance v0, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    #@7
    const-string/jumbo v1, "UNDEFINED"

    #@a
    const-string/jumbo v2, "undefined"

    #@d
    const/4 v3, -0x1

    #@e
    invoke-direct {v0, v1, v4, v2, v3}, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #@11
    sput-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->UNDEFINED:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    #@13
    .line 371
    new-instance v0, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    #@15
    const-string/jumbo v1, "ANONYMOUS"

    #@18
    const-string/jumbo v2, "anonymous"

    #@1b
    invoke-direct {v0, v1, v5, v2, v4}, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #@1e
    sput-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->ANONYMOUS:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    #@20
    .line 372
    new-instance v0, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    #@22
    const-string/jumbo v1, "RSA"

    #@25
    const-string/jumbo v2, "rsa"

    #@28
    invoke-direct {v0, v1, v6, v2, v5}, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #@2b
    sput-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->RSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    #@2d
    .line 373
    new-instance v0, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    #@2f
    const-string/jumbo v1, "DSA"

    #@32
    const-string/jumbo v2, "dsa"

    #@35
    invoke-direct {v0, v1, v7, v2, v6}, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #@38
    sput-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->DSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    #@3a
    .line 374
    new-instance v0, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    #@3c
    const-string/jumbo v1, "ECDSA"

    #@3f
    const-string/jumbo v2, "ecdsa"

    #@42
    invoke-direct {v0, v1, v8, v2, v7}, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #@45
    sput-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->ECDSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    #@47
    .line 369
    const/4 v0, 0x5

    #@48
    new-array v0, v0, [Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    #@4a
    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->UNDEFINED:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    #@4c
    aput-object v1, v0, v4

    #@4e
    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->ANONYMOUS:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    #@50
    aput-object v1, v0, v5

    #@52
    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->RSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    #@54
    aput-object v1, v0, v6

    #@56
    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->DSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    #@58
    aput-object v1, v0, v7

    #@5a
    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->ECDSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    #@5c
    aput-object v1, v0, v8

    #@5e
    sput-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->$VALUES:[Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    #@60
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "value"    # I

    #@0
    .prologue
    .line 381
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 382
    iput-object p3, p0, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->name:Ljava/lang/String;

    #@5
    .line 383
    iput p4, p0, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->value:I

    #@7
    .line 381
    return-void
.end method

.method static valueOf(I)Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;
    .locals 1
    .param p0, "value"    # I

    #@0
    .prologue
    .line 387
    sget-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->UNDEFINED:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    #@2
    .line 388
    .local v0, "algorithm":Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;
    packed-switch p0, :pswitch_data_0

    #@5
    .line 403
    :goto_0
    return-object v0

    #@6
    .line 390
    :pswitch_0
    sget-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->ANONYMOUS:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    #@8
    goto :goto_0

    #@9
    .line 393
    :pswitch_1
    sget-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->RSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    #@b
    goto :goto_0

    #@c
    .line 396
    :pswitch_2
    sget-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->DSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    #@e
    goto :goto_0

    #@f
    .line 399
    :pswitch_3
    sget-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->ECDSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    #@11
    goto :goto_0

    #@12
    .line 388
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 369
    const-class v0, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    #@8
    return-object v0
.end method

.method public static values()[Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;
    .locals 1

    #@0
    .prologue
    .line 369
    sget-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->$VALUES:[Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    #@2
    return-object v0
.end method
