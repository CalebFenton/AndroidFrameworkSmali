.class public Lcom/android/internal/net/eap/EapResult$EapResponse;
.super Lcom/android/internal/net/eap/EapResult;
.source "EapResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/EapResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EapResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/eap/EapResult$EapResponse$EapResponseFlag;
    }
.end annotation


# static fields
.field public static final blacklist RESPONSE_FLAG_EAP_AKA_SERVER_AUTHENTICATED:I


# instance fields
.field public final blacklist flagMask:I

.field public final blacklist packet:[B


# direct methods
.method protected constructor blacklist <init>([B[I)V
    .registers 4
    .param p1, "packet"    # [B
    .param p2, "flagsToAdd"    # [I

    .line 102
    invoke-direct {p0}, Lcom/android/internal/net/eap/EapResult;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/android/internal/net/eap/EapResult$EapResponse;->packet:[B

    .line 104
    invoke-static {p2}, Lcom/android/internal/net/eap/EapResult$EapResponse;->createFlagMask([I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/net/eap/EapResult$EapResponse;->flagMask:I

    .line 105
    return-void
.end method

.method private static blacklist createFlagMask([I)I
    .registers 6
    .param p0, "flagsToAdd"    # [I

    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, "flagMask":I
    if-eqz p0, :cond_12

    array-length v1, p0

    if-lez v1, :cond_12

    .line 159
    array-length v1, p0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget v3, p0, v2

    .line 160
    .local v3, "flag":I
    const/4 v4, 0x1

    shl-int/2addr v4, v3

    or-int/2addr v0, v4

    .line 159
    .end local v3    # "flag":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 163
    :cond_12
    return v0
.end method

.method public static blacklist getEapResponse(Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;
    .registers 2
    .param p0, "message"    # Lcom/android/internal/net/eap/message/EapMessage;

    .line 141
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/net/eap/EapResult$EapResponse;->getEapResponse(Lcom/android/internal/net/eap/message/EapMessage;[I)Lcom/android/internal/net/eap/EapResult;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getEapResponse(Lcom/android/internal/net/eap/message/EapMessage;[I)Lcom/android/internal/net/eap/EapResult;
    .registers 5
    .param p0, "message"    # Lcom/android/internal/net/eap/message/EapMessage;
    .param p1, "flagsToAdd"    # [I

    .line 120
    if-eqz p0, :cond_1e

    .line 122
    iget v0, p0, Lcom/android/internal/net/eap/message/EapMessage;->eapCode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_14

    .line 123
    new-instance v0, Lcom/android/internal/net/eap/EapResult$EapError;

    new-instance v1, Lcom/android/internal/net/eap/exceptions/InvalidEapResponseException;

    const-string v2, "Cannot construct an EapResult from a non-EAP-Response message"

    invoke-direct {v1, v2}, Lcom/android/internal/net/eap/exceptions/InvalidEapResponseException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    return-object v0

    .line 127
    :cond_14
    new-instance v0, Lcom/android/internal/net/eap/EapResult$EapResponse;

    invoke-virtual {p0}, Lcom/android/internal/net/eap/message/EapMessage;->encode()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/net/eap/EapResult$EapResponse;-><init>([B[I)V

    return-object v0

    .line 121
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EapMessage should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist hasFlag(II)Z
    .registers 4
    .param p0, "flagMask"    # I
    .param p1, "flagToCheck"    # I

    .line 153
    const/4 v0, 0x1

    shl-int v1, v0, p1

    and-int/2addr v1, p0

    if-eqz v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method
