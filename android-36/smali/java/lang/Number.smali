.class public abstract Ljava/lang/Number;
.super Ljava/lang/Object;
.source "Number.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final whitelist serialVersionUID:J = -0x79536ae2f46b1f75L


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api byteValue()B
    .registers 2

    .line 105
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public abstract whitelist test-api doubleValue()D
.end method

.method public abstract whitelist test-api floatValue()F
.end method

.method public abstract whitelist test-api intValue()I
.end method

.method public abstract whitelist test-api longValue()J
.end method

.method public whitelist test-api shortValue()S
    .registers 2

    .line 120
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method
