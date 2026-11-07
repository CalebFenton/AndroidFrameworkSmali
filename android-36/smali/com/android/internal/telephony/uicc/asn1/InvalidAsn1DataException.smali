.class public Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
.super Ljava/lang/Exception;
.source "InvalidAsn1DataException.java"


# instance fields
.field private final blacklist mTag:I


# direct methods
.method public constructor blacklist <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "tag"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 28
    iput p1, p0, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;->mTag:I

    .line 29
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "tag"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .line 32
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    iput p1, p0, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;->mTag:I

    .line 34
    return-void
.end method


# virtual methods
.method public whitelist test-api getMessage()Ljava/lang/String;
    .registers 3

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;->mTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTag()I
    .registers 2

    .line 38
    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;->mTag:I

    return v0
.end method
