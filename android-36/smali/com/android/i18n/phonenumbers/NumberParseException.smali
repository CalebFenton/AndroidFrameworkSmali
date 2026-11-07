.class public Lcom/android/i18n/phonenumbers/NumberParseException;
.super Ljava/lang/Exception;
.source "NumberParseException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;
    }
.end annotation


# instance fields
.field private greylist-max-o errorType:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

.field private greylist-max-o message:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V
    .registers 3
    .param p1, "errorType"    # Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;
    .param p2, "message"    # Ljava/lang/String;

    .line 64
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 65
    iput-object p2, p0, Lcom/android/i18n/phonenumbers/NumberParseException;->message:Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/NumberParseException;->errorType:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    .line 67
    return-void
.end method


# virtual methods
.method public greylist getErrorType()Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/NumberParseException;->errorType:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/i18n/phonenumbers/NumberParseException;->errorType:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/i18n/phonenumbers/NumberParseException;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
