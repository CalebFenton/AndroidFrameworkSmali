.class Lcom/android/internal/telephony/cat/ItemsIconId;
.super Lcom/android/internal/telephony/cat/ValueObject;
.source "CommandDetails.java"


# instance fields
.field recordNumbers:[I

.field selfExplanatory:Z


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ValueObject;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method getTag()Lcom/android/internal/telephony/cat/ComprehensionTlvTag;
    .locals 1

    #@0
    .prologue
    .line 121
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ICON_ID_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@2
    return-object v0
.end method
