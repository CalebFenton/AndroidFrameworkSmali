.class Lcom/android/internal/telephony/cat/LanguageParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field blacklist mLanguage:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/lang/String;)V
    .registers 3

    .line 165
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 166
    iput-object p2, p0, Lcom/android/internal/telephony/cat/LanguageParams;->mLanguage:Ljava/lang/String;

    return-void
.end method
