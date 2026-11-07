.class Lcom/android/internal/telephony/cat/SetEventListParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field blacklist mEventInfo:[I


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/cat/CommandDetails;[I)V
    .registers 3

    .line 107
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 108
    iput-object p2, p0, Lcom/android/internal/telephony/cat/SetEventListParams;->mEventInfo:[I

    return-void
.end method
