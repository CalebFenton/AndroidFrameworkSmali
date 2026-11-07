.class Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPsiSmscLoaded;
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
    name = "EfIsimPsiSmscLoaded"
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

    .line 275
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPsiSmscLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Lcom/android/internal/telephony/uicc/IsimUiccRecords-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPsiSmscLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)V

    return-void
.end method


# virtual methods
.method public blacklist getEfName()Ljava/lang/String;
    .registers 1

    .line 279
    const-string p0, "EF_ISIM_PSISMSC"

    return-object p0
.end method

.method public blacklist onRecordLoaded(Landroid/os/AsyncResult;)V
    .registers 4

    .line 284
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    if-eqz p1, :cond_31

    .line 285
    array-length v0, p1

    if-lez v0, :cond_31

    .line 286
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPsiSmscLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->parseEfPsiSmsc([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/telephony/uicc/IccRecords;->mPsiSmsc:Ljava/lang/String;

    .line 287
    invoke-static {}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->-$$Nest$sfgetVDBG()Z

    move-result p1

    if-eqz p1, :cond_31

    .line 288
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPsiSmscLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IsimUiccRecords - EF_PSISMSC value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPsiSmscLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPsiSmsc:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    :cond_31
    return-void
.end method
