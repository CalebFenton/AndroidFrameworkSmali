.class Landroid/telephony/SmsMessage$NoEmsSupportConfig;
.super Ljava/lang/Object;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SmsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoEmsSupportConfig"
.end annotation


# instance fields
.field mGid1:Ljava/lang/String;

.field mIsPrefix:Z

.field mOperatorNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 3
    .param p1, "config"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    .line 835
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 836
    const/4 v0, 0x0

    #@5
    aget-object v0, p1, v0

    #@7
    iput-object v0, p0, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mOperatorNumber:Ljava/lang/String;

    #@9
    .line 837
    const-string/jumbo v0, "prefix"

    #@c
    const/4 v1, 0x1

    #@d
    aget-object v1, p1, v1

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v0

    #@13
    iput-boolean v0, p0, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mIsPrefix:Z

    #@15
    .line 838
    array-length v0, p1

    #@16
    if-le v0, v2, :cond_0

    #@18
    aget-object v0, p1, v2

    #@1a
    :goto_0
    iput-object v0, p0, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mGid1:Ljava/lang/String;

    #@1c
    .line 835
    return-void

    #@1d
    .line 838
    :cond_0
    const/4 v0, 0x0

    #@1e
    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "NoEmsSupportConfig { mOperatorNumber = "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mOperatorNumber:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 844
    const-string/jumbo v1, ", mIsPrefix = "

    #@15
    .line 843
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 844
    iget-boolean v1, p0, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mIsPrefix:Z

    #@1b
    .line 843
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 844
    const-string/jumbo v1, ", mGid1 = "

    #@22
    .line 843
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 844
    iget-object v1, p0, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mGid1:Ljava/lang/String;

    #@28
    .line 843
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 844
    const-string/jumbo v1, " }"

    #@2f
    .line 843
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    return-object v0
.end method
