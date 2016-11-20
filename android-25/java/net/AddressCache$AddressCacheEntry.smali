.class Ljava/net/AddressCache$AddressCacheEntry;
.super Ljava/lang/Object;
.source "AddressCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/AddressCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AddressCacheEntry"
.end annotation


# instance fields
.field final expiryNanos:J

.field final value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 85
    iput-object p1, p0, Ljava/net/AddressCache$AddressCacheEntry;->value:Ljava/lang/Object;

    #@5
    .line 86
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@8
    move-result-wide v0

    #@9
    const-wide/32 v2, 0x77359400

    #@c
    add-long/2addr v0, v2

    #@d
    iput-wide v0, p0, Ljava/net/AddressCache$AddressCacheEntry;->expiryNanos:J

    #@f
    .line 84
    return-void
.end method
