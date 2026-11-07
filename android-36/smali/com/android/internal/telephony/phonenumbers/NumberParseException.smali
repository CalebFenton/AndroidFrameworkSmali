.class public Lcom/android/internal/telephony/phonenumbers/NumberParseException;
.super Ljava/lang/Exception;
.source "NumberParseException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;
    }
.end annotation


# instance fields
.field private blacklist errorType:Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

.field private blacklist message:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V
    .registers 3

    .line 61
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 62
    iput-object p2, p0, Lcom/android/internal/telephony/phonenumbers/NumberParseException;->message:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/NumberParseException;->errorType:Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    return-void
.end method


# virtual methods
.method public blacklist getErrorType()Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/NumberParseException;->errorType:Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/phonenumbers/NumberParseException;->errorType:Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/NumberParseException;->message:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
