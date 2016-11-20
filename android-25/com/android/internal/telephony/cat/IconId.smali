.class Lcom/android/internal/telephony/cat/IconId;
.super Lcom/android/internal/telephony/cat/ValueObject;
.source "CommandDetails.java"


# instance fields
.field recordNumber:I

.field selfExplanatory:Z


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ValueObject;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method getTag()Lcom/android/internal/telephony/cat/ComprehensionTlvTag;
    .locals 1

    #@0
    .prologue
    .line 110
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@2
    return-object v0
.end method
