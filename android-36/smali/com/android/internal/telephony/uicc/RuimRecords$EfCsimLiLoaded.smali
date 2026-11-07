.class Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;
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
    name = "EfCsimLiLoaded"
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

    .line 243
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    return-void
.end method


# virtual methods
.method public blacklist getEfName()Ljava/lang/String;
    .registers 1

    .line 246
    const-string p0, "EF_CSIM_LI"

    return-object p0
.end method

.method public blacklist onRecordLoaded(Landroid/os/AsyncResult;)V
    .registers 6

    .line 251
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {v0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->-$$Nest$fputmEFli(Lcom/android/internal/telephony/uicc/RuimRecords;[B)V

    const/4 p1, 0x0

    .line 253
    :goto_a
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->-$$Nest$fgetmEFli(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_c5

    .line 254
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->-$$Nest$fgetmEFli(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    aget-byte v0, v0, v1

    const/16 v2, 0x68

    const/16 v3, 0x65

    packed-switch v0, :pswitch_data_e6

    .line 262
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->-$$Nest$fgetmEFli(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v0

    const/16 v2, 0x20

    aput-byte v2, v0, p1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->-$$Nest$fgetmEFli(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v0

    aput-byte v2, v0, v1

    goto/16 :goto_c1

    .line 261
    :pswitch_38
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->-$$Nest$fgetmEFli(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v0

    aput-byte v2, v0, p1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->-$$Nest$fgetmEFli(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v0

    aput-byte v3, v0, v1

    goto/16 :goto_c1

    .line 260
    :pswitch_4a
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->-$$Nest$fgetmEFli(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v0

    const/16 v3, 0x7a

    aput-byte v3, v0, p1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->-$$Nest$fgetmEFli(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v0

    aput-byte v2, v0, v1

    goto :goto_c1

    .line 259
    :pswitch_5d
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->-$$Nest$fgetmEFli(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v0

    const/16 v2, 0x6b

    aput-byte v2, v0, p1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->-$$Nest$fgetmEFli(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v0

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    goto :goto_c1

    .line 258
    :pswitch_72
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->-$$Nest$fgetmEFli(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v0

    const/16 v2, 0x6a

    aput-byte v2, v0, p1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->-$$Nest$fgetmEFli(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v0

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    goto :goto_c1

    .line 257
    :pswitch_87
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->-$$Nest$fgetmEFli(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v0

    aput-byte v3, v0, p1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->-$$Nest$fgetmEFli(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v0

    const/16 v2, 0x73

    aput-byte v2, v0, v1

    goto :goto_c1

    .line 256
    :pswitch_9a
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->-$$Nest$fgetmEFli(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v0

    const/16 v2, 0x66

    aput-byte v2, v0, p1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->-$$Nest$fgetmEFli(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v0

    const/16 v2, 0x72

    aput-byte v2, v0, v1

    goto :goto_c1

    .line 255
    :pswitch_af
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->-$$Nest$fgetmEFli(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v0

    aput-byte v3, v0, p1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->-$$Nest$fgetmEFli(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v0

    const/16 v2, 0x6e

    aput-byte v2, v0, v1

    :goto_c1
    add-int/lit8 p1, p1, 0x2

    goto/16 :goto_a

    .line 266
    :cond_c5
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EF_LI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->-$$Nest$fgetmEFli(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    return-void

    :pswitch_data_e6
    .packed-switch 0x1
        :pswitch_af
        :pswitch_9a
        :pswitch_87
        :pswitch_72
        :pswitch_5d
        :pswitch_4a
        :pswitch_38
    .end packed-switch
.end method
