.class final Ljava/math/NativeBN;
.super Ljava/lang/Object;
.source "NativeBN.java"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static native BN_add(JJJ)V
.end method

.method public static native BN_add_word(JI)V
.end method

.method public static native BN_bin2bn([BIZJ)V
.end method

.method public static native BN_bn2bin(J)[B
.end method

.method public static native BN_bn2dec(J)Ljava/lang/String;
.end method

.method public static native BN_bn2hex(J)Ljava/lang/String;
.end method

.method public static native BN_cmp(JJ)I
.end method

.method public static native BN_copy(JJ)V
.end method

.method public static native BN_dec2bn(JLjava/lang/String;)I
.end method

.method public static native BN_div(JJJJ)V
.end method

.method public static native BN_exp(JJJ)V
.end method

.method public static native BN_free(J)V
.end method

.method public static native BN_gcd(JJJ)V
.end method

.method public static native BN_generate_prime_ex(JIZJJJ)V
.end method

.method public static native BN_hex2bn(JLjava/lang/String;)I
.end method

.method public static native BN_is_bit_set(JI)Z
.end method

.method public static native BN_is_prime_ex(JIJ)Z
.end method

.method public static native BN_mod_exp(JJJJ)V
.end method

.method public static native BN_mod_inverse(JJJ)V
.end method

.method public static native BN_mod_word(JI)I
.end method

.method public static native BN_mul(JJJ)V
.end method

.method public static native BN_mul_word(JI)V
.end method

.method public static native BN_new()J
.end method

.method public static native BN_nnmod(JJJ)V
.end method

.method public static native BN_set_negative(JI)V
.end method

.method public static native BN_shift(JJI)V
.end method

.method public static native BN_sub(JJJ)V
.end method

.method public static native bitLength(J)I
.end method

.method public static native bn2litEndInts(J)[I
.end method

.method public static native litEndInts2bn([IIZJ)V
.end method

.method public static native longInt(J)J
.end method

.method public static native putLongInt(JJ)V
.end method

.method public static native putULongInt(JJZ)V
.end method

.method public static native sign(J)I
.end method

.method public static native twosComp2bn([BIJ)V
.end method
