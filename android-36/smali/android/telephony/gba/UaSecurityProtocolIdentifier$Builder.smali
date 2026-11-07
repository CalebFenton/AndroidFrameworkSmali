.class public final Landroid/telephony/gba/UaSecurityProtocolIdentifier$Builder;
.super Ljava/lang/Object;
.source "UaSecurityProtocolIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/gba/UaSecurityProtocolIdentifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mSp:Landroid/telephony/gba/UaSecurityProtocolIdentifier;


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    new-instance v0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telephony/gba/UaSecurityProtocolIdentifier;-><init>(Landroid/telephony/gba/UaSecurityProtocolIdentifier-IA;)V

    iput-object v0, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier$Builder;->mSp:Landroid/telephony/gba/UaSecurityProtocolIdentifier;

    .line 332
    return-void
.end method

.method public constructor whitelist <init>(Landroid/telephony/gba/UaSecurityProtocolIdentifier;)V
    .registers 4
    .param p1, "sp"    # Landroid/telephony/gba/UaSecurityProtocolIdentifier;

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    new-instance v0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/telephony/gba/UaSecurityProtocolIdentifier;-><init>(Landroid/telephony/gba/UaSecurityProtocolIdentifier;Landroid/telephony/gba/UaSecurityProtocolIdentifier-IA;)V

    iput-object v0, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier$Builder;->mSp:Landroid/telephony/gba/UaSecurityProtocolIdentifier;

    .line 340
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/telephony/gba/UaSecurityProtocolIdentifier;
    .registers 4

    .line 433
    new-instance v0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;

    iget-object v1, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier$Builder;->mSp:Landroid/telephony/gba/UaSecurityProtocolIdentifier;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/telephony/gba/UaSecurityProtocolIdentifier;-><init>(Landroid/telephony/gba/UaSecurityProtocolIdentifier;Landroid/telephony/gba/UaSecurityProtocolIdentifier-IA;)V

    return-object v0
.end method

.method public whitelist setOrg(I)Landroid/telephony/gba/UaSecurityProtocolIdentifier$Builder;
    .registers 4
    .param p1, "orgCode"    # I

    .line 361
    if-ltz p1, :cond_17

    const/16 v0, 0xff

    if-gt p1, v0, :cond_17

    .line 364
    iget-object v0, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier$Builder;->mSp:Landroid/telephony/gba/UaSecurityProtocolIdentifier;

    invoke-static {v0, p1}, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->-$$Nest$fputmOrg(Landroid/telephony/gba/UaSecurityProtocolIdentifier;I)V

    .line 365
    iget-object v0, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier$Builder;->mSp:Landroid/telephony/gba/UaSecurityProtocolIdentifier;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->-$$Nest$fputmProtocol(Landroid/telephony/gba/UaSecurityProtocolIdentifier;I)V

    .line 366
    iget-object v0, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier$Builder;->mSp:Landroid/telephony/gba/UaSecurityProtocolIdentifier;

    invoke-static {v0, v1}, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->-$$Nest$fputmTlsCipherSuite(Landroid/telephony/gba/UaSecurityProtocolIdentifier;I)V

    .line 367
    return-object p0

    .line 362
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "illegal organization code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setProtocol(I)Landroid/telephony/gba/UaSecurityProtocolIdentifier$Builder;
    .registers 4
    .param p1, "protocol"    # I

    .line 394
    if-ltz p1, :cond_26

    const/4 v0, 0x6

    if-le p1, v0, :cond_11

    const/16 v0, 0x100

    if-eq p1, v0, :cond_11

    const/high16 v0, 0x10000

    if-eq p1, v0, :cond_11

    const/high16 v0, 0x20000

    if-ne p1, v0, :cond_26

    :cond_11
    iget-object v0, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier$Builder;->mSp:Landroid/telephony/gba/UaSecurityProtocolIdentifier;

    invoke-static {v0}, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->-$$Nest$fgetmOrg(Landroid/telephony/gba/UaSecurityProtocolIdentifier;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    .line 402
    iget-object v0, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier$Builder;->mSp:Landroid/telephony/gba/UaSecurityProtocolIdentifier;

    invoke-static {v0, p1}, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->-$$Nest$fputmProtocol(Landroid/telephony/gba/UaSecurityProtocolIdentifier;I)V

    .line 403
    iget-object v0, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier$Builder;->mSp:Landroid/telephony/gba/UaSecurityProtocolIdentifier;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->-$$Nest$fputmTlsCipherSuite(Landroid/telephony/gba/UaSecurityProtocolIdentifier;I)V

    .line 404
    return-object p0

    .line 400
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "illegal protocol code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setTlsCipherSuite(I)Landroid/telephony/gba/UaSecurityProtocolIdentifier$Builder;
    .registers 4
    .param p1, "cs"    # I

    .line 416
    iget-object v0, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier$Builder;->mSp:Landroid/telephony/gba/UaSecurityProtocolIdentifier;

    invoke-static {v0}, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->-$$Nest$misTlsSupported(Landroid/telephony/gba/UaSecurityProtocolIdentifier;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 419
    invoke-static {p1}, Landroid/telephony/gba/TlsParams;->isTlsCipherSuiteSupported(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 422
    iget-object v0, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier$Builder;->mSp:Landroid/telephony/gba/UaSecurityProtocolIdentifier;

    invoke-static {v0, p1}, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->-$$Nest$fputmTlsCipherSuite(Landroid/telephony/gba/UaSecurityProtocolIdentifier;I)V

    .line 423
    return-object p0

    .line 420
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TLS cipher suite is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 417
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The protocol does not support TLS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
