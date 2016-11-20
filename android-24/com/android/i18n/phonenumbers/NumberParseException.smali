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
.field private errorType:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorType"    # Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;
    .param p2, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 46
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@3
    .line 47
    iput-object p2, p0, Lcom/android/i18n/phonenumbers/NumberParseException;->message:Ljava/lang/String;

    #@5
    .line 48
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/NumberParseException;->errorType:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    #@7
    .line 45
    return-void
.end method


# virtual methods
.method public getErrorType()Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;
    .locals 1

    #@0
    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/NumberParseException;->errorType:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Error type: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/NumberParseException;->errorType:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ". "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/NumberParseException;->message:Ljava/lang/String;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    return-object v0
.end method
