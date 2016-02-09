.class Lcom/android/server/TelephonyRegistry$LogSSC;
.super Ljava/lang/Object;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogSSC"
.end annotation


# instance fields
.field private mPhoneId:I

.field private mS:Ljava/lang/String;

.field private mState:Landroid/telephony/ServiceState;

.field private mSubId:I

.field private mTime:Landroid/text/format/Time;


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/TelephonyRegistry$LogSSC;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry$LogSSC;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public set(Landroid/text/format/Time;Ljava/lang/String;IILandroid/telephony/ServiceState;)V
    .locals 0
    .param p1, "t"    # Landroid/text/format/Time;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "subId"    # I
    .param p4, "phoneId"    # I
    .param p5, "state"    # Landroid/telephony/ServiceState;

    #@0
    .prologue
    .line 1662
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry$LogSSC;->mTime:Landroid/text/format/Time;

    #@2
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry$LogSSC;->mS:Ljava/lang/String;

    #@4
    iput p3, p0, Lcom/android/server/TelephonyRegistry$LogSSC;->mSubId:I

    #@6
    iput p4, p0, Lcom/android/server/TelephonyRegistry$LogSSC;->mPhoneId:I

    #@8
    iput-object p5, p0, Lcom/android/server/TelephonyRegistry$LogSSC;->mState:Landroid/telephony/ServiceState;

    #@a
    .line 1661
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1667
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$LogSSC;->mS:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, " Time "

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$LogSSC;->mTime:Landroid/text/format/Time;

    #@14
    invoke-virtual {v1}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    const-string/jumbo v1, " mSubId "

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    iget v1, p0, Lcom/android/server/TelephonyRegistry$LogSSC;->mSubId:I

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    const-string/jumbo v1, " mPhoneId "

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    .line 1668
    iget v1, p0, Lcom/android/server/TelephonyRegistry$LogSSC;->mPhoneId:I

    #@32
    .line 1667
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    .line 1668
    const-string/jumbo v1, "  mState "

    #@39
    .line 1667
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    .line 1668
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$LogSSC;->mState:Landroid/telephony/ServiceState;

    #@3f
    .line 1667
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v0

    #@47
    return-object v0
.end method
