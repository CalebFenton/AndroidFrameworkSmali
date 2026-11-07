.class Lcom/android/internal/telephony/uicc/euicc/Tags;
.super Ljava/lang/Object;
.source "Tags.java"


# static fields
.field static final blacklist EUICC_PROFILE_MEP_TAGS:[B

.field static final blacklist EUICC_PROFILE_TAGS:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    const/16 v0, 0xb

    .line 98
    new-array v0, v0, [B

    fill-array-data v0, :array_14

    sput-object v0, Lcom/android/internal/telephony/uicc/euicc/Tags;->EUICC_PROFILE_TAGS:[B

    const/16 v0, 0xd

    .line 113
    new-array v0, v0, [B

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/android/internal/telephony/uicc/euicc/Tags;->EUICC_PROFILE_MEP_TAGS:[B

    return-void

    nop

    :array_14
    .array-data 1
        0x5at
        -0x70t
        -0x6ft
        -0x6et
        -0x49t
        -0x61t
        0x70t
        -0x6bt
        -0x67t
        -0x41t
        0x76t
    .end array-data

    :array_1e
    .array-data 1
        0x5at
        -0x70t
        -0x6ft
        -0x6et
        -0x49t
        -0x61t
        0x70t
        -0x6bt
        -0x67t
        -0x41t
        0x76t
        -0x61t
        0x24t
    .end array-data
.end method
