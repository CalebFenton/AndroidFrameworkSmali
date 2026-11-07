.class Landroid/app/PropertyInvalidatedCache$NonceLocal;
.super Landroid/app/PropertyInvalidatedCache$NonceHandler;
.source "PropertyInvalidatedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PropertyInvalidatedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NonceLocal"
.end annotation


# instance fields
.field private blacklist mValue:J


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 1041
    invoke-direct {p0, p1}, Landroid/app/PropertyInvalidatedCache$NonceHandler;-><init>(Ljava/lang/String;)V

    .line 1042
    return-void
.end method


# virtual methods
.method blacklist getNonceInternal()J
    .registers 3

    .line 1046
    iget-wide v0, p0, Landroid/app/PropertyInvalidatedCache$NonceLocal;->mShadowNonce:J

    return-wide v0
.end method

.method blacklist setNonceInternal(J)V
    .registers 3
    .param p1, "value"    # J

    .line 1051
    iput-wide p1, p0, Landroid/app/PropertyInvalidatedCache$NonceLocal;->mShadowNonce:J

    .line 1052
    return-void
.end method
