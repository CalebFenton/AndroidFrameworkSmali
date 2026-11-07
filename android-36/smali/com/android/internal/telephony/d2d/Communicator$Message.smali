.class public Lcom/android/internal/telephony/d2d/Communicator$Message;
.super Ljava/lang/Object;
.source "Communicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/d2d/Communicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Message"
.end annotation


# instance fields
.field private blacklist mType:I

.field private blacklist mValue:I


# direct methods
.method public constructor blacklist <init>(II)V
    .registers 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Lcom/android/internal/telephony/d2d/Communicator$Message;->mType:I

    .line 73
    iput p2, p0, Lcom/android/internal/telephony/d2d/Communicator$Message;->mValue:I

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_21

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_21

    .line 88
    :cond_12
    check-cast p1, Lcom/android/internal/telephony/d2d/Communicator$Message;

    .line 89
    iget v2, p0, Lcom/android/internal/telephony/d2d/Communicator$Message;->mType:I

    iget v3, p1, Lcom/android/internal/telephony/d2d/Communicator$Message;->mType:I

    if-ne v2, v3, :cond_21

    iget p0, p0, Lcom/android/internal/telephony/d2d/Communicator$Message;->mValue:I

    iget p1, p1, Lcom/android/internal/telephony/d2d/Communicator$Message;->mValue:I

    if-ne p0, p1, :cond_21

    return v0

    :cond_21
    :goto_21
    return v1
.end method

.method public blacklist getType()I
    .registers 1

    .line 77
    iget p0, p0, Lcom/android/internal/telephony/d2d/Communicator$Message;->mType:I

    return p0
.end method

.method public blacklist getValue()I
    .registers 1

    .line 81
    iget p0, p0, Lcom/android/internal/telephony/d2d/Communicator$Message;->mValue:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 94
    iget v0, p0, Lcom/android/internal/telephony/d2d/Communicator$Message;->mType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Lcom/android/internal/telephony/d2d/Communicator$Message;->mValue:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message{mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/d2d/Communicator$Message;->mType:I

    invoke-static {v1}, Lcom/android/internal/telephony/d2d/Communicator;->messageToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/d2d/Communicator$Message;->mType:I

    iget p0, p0, Lcom/android/internal/telephony/d2d/Communicator$Message;->mValue:I

    .line 100
    invoke-static {v1, p0}, Lcom/android/internal/telephony/d2d/Communicator;->valueToString(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
