.class Lcom/android/internal/telephony/uicc/RuimRecords$EfPlLoaded;
.super Ljava/lang/Object;
.source "RuimRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/RuimRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfPlLoaded"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/RuimRecords;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 229
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfPlLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords$EfPlLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    return-void
.end method


# virtual methods
.method public blacklist getEfName()Ljava/lang/String;
    .registers 1

    .line 232
    const-string p0, "EF_PL"

    return-object p0
.end method

.method public blacklist onRecordLoaded(Landroid/os/AsyncResult;)V
    .registers 4

    .line 237
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfPlLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {v0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->-$$Nest$fputmEFpl(Lcom/android/internal/telephony/uicc/RuimRecords;[B)V

    .line 238
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfPlLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EF_PL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfPlLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->-$$Nest$fgetmEFpl(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    return-void
.end method
