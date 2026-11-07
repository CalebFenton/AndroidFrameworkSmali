.class public final Llibcore/math/NativeBN;
.super Ljava/lang/Object;
.source "NativeBN.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native blacklist BN_div(JJJJ)V
.end method

.method public static native blacklist BN_free(J)V
.end method

.method public static native blacklist BN_mod_exp(JJJJ)V
.end method

.method public static native blacklist BN_mul(JJJ)V
.end method

.method public static native blacklist BN_new()J
.end method

.method public static native blacklist bn2litEndInts(J)[I
.end method

.method public static native blacklist litEndInts2bn([IIZJ)V
.end method
