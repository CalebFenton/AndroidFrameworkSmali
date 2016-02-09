.class Lcom/android/internal/telephony/cat/SetEventListParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field mEventInfo:[I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;[I)V
    .locals 0
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "eventInfo"    # [I

    #@0
    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    #@3
    .line 99
    iput-object p2, p0, Lcom/android/internal/telephony/cat/SetEventListParams;->mEventInfo:[I

    #@5
    .line 97
    return-void
.end method
