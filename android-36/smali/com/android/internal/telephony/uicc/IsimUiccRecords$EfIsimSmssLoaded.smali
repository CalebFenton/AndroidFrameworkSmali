.class Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimSmssLoaded;
.super Ljava/lang/Object;
.source "IsimUiccRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IsimUiccRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfIsimSmssLoaded"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 242
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimSmssLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Lcom/android/internal/telephony/uicc/IsimUiccRecords-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimSmssLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)V

    return-void
.end method


# virtual methods
.method public blacklist getEfName()Ljava/lang/String;
    .registers 1

    .line 246
    const-string p0, "EF_ISIM_SMSS"

    return-object p0
.end method

.method public blacklist onRecordLoaded(Landroid/os/AsyncResult;)V
    .registers 4

    .line 251
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimSmssLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    iput-object p1, v0, Lcom/android/internal/telephony/uicc/IccRecords;->mSmssValues:[B

    .line 252
    invoke-static {}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->-$$Nest$sfgetVDBG()Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 253
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimSmssLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IsimUiccRecords - EF_SMSS TPMR value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimSmssLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getSmssTpmrValue()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    :cond_2a
    return-void
.end method
