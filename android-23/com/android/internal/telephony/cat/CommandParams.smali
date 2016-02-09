.class Lcom/android/internal/telephony/cat/CommandParams;
.super Ljava/lang/Object;
.source "CommandParams.java"


# instance fields
.field mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;)V
    .locals 0
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 29
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    #@5
    .line 28
    return-void
.end method


# virtual methods
.method getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .locals 1

    #@0
    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    #@2
    iget v0, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    #@4
    invoke-static {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method setIcon(Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 36
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CommandDetails;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
