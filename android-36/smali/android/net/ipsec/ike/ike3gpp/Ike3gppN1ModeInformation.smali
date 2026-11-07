.class public final Landroid/net/ipsec/ike/ike3gpp/Ike3gppN1ModeInformation;
.super Landroid/net/ipsec/ike/ike3gpp/Ike3gppData;
.source "Ike3gppN1ModeInformation.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mSnssai:[B


# direct methods
.method public constructor whitelist <init>([B)V
    .registers 3
    .param p1, "snssai"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 42
    invoke-direct {p0}, Landroid/net/ipsec/ike/ike3gpp/Ike3gppData;-><init>()V

    .line 43
    const-string v0, "snssai must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/net/ipsec/ike/ike3gpp/Ike3gppN1ModeInformation;->mSnssai:[B

    .line 45
    return-void
.end method


# virtual methods
.method public whitelist getDataType()I
    .registers 2

    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getSnssai()[B
    .registers 2

    .line 59
    iget-object v0, p0, Landroid/net/ipsec/ike/ike3gpp/Ike3gppN1ModeInformation;->mSnssai:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
