.class public Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;
.super Ljava/lang/Exception;
.source "TagNotFoundException.java"


# instance fields
.field private final blacklist mTag:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 2
    .param p1, "tag"    # I

    .line 25
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 26
    iput p1, p0, Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;->mTag:I

    .line 27
    return-void
.end method


# virtual methods
.method public whitelist test-api getMessage()Ljava/lang/String;
    .registers 3

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;->mTag:I

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

    .line 31
    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;->mTag:I

    return v0
.end method
