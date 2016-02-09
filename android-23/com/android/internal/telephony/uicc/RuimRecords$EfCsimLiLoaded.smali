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
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/RuimRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/RuimRecords;

    #@0
    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/RuimRecords;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    #@3
    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 251
    const-string/jumbo v0, "EF_CSIM_LI"

    #@3
    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    const/16 v6, 0x68

    #@2
    const/16 v5, 0x20

    #@4
    const/16 v4, 0x65

    #@6
    .line 256
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@8
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@a
    check-cast v1, [B

    #@c
    invoke-static {v2, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->-set0(Lcom/android/internal/telephony/uicc/RuimRecords;[B)[B

    #@f
    .line 258
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@12
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->-get0(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    #@15
    move-result-object v1

    #@16
    array-length v1, v1

    #@17
    if-ge v0, v1, :cond_0

    #@19
    .line 259
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@1b
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->-get0(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    #@1e
    move-result-object v1

    #@1f
    add-int/lit8 v2, v0, 0x1

    #@21
    aget-byte v1, v1, v2

    #@23
    packed-switch v1, :pswitch_data_0

    #@26
    .line 267
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@28
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->-get0(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    #@2b
    move-result-object v1

    #@2c
    aput-byte v5, v1, v0

    #@2e
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@30
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->-get0(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    #@33
    move-result-object v1

    #@34
    add-int/lit8 v2, v0, 0x1

    #@36
    aput-byte v5, v1, v2

    #@38
    .line 258
    :goto_1
    add-int/lit8 v0, v0, 0x2

    #@3a
    goto :goto_0

    #@3b
    .line 260
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@3d
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->-get0(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    #@40
    move-result-object v1

    #@41
    aput-byte v4, v1, v0

    #@43
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@45
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->-get0(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    #@48
    move-result-object v1

    #@49
    add-int/lit8 v2, v0, 0x1

    #@4b
    const/16 v3, 0x6e

    #@4d
    aput-byte v3, v1, v2

    #@4f
    goto :goto_1

    #@50
    .line 261
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@52
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->-get0(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    #@55
    move-result-object v1

    #@56
    const/16 v2, 0x66

    #@58
    aput-byte v2, v1, v0

    #@5a
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@5c
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->-get0(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    #@5f
    move-result-object v1

    #@60
    add-int/lit8 v2, v0, 0x1

    #@62
    const/16 v3, 0x72

    #@64
    aput-byte v3, v1, v2

    #@66
    goto :goto_1

    #@67
    .line 262
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@69
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->-get0(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    #@6c
    move-result-object v1

    #@6d
    aput-byte v4, v1, v0

    #@6f
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@71
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->-get0(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    #@74
    move-result-object v1

    #@75
    add-int/lit8 v2, v0, 0x1

    #@77
    const/16 v3, 0x73

    #@79
    aput-byte v3, v1, v2

    #@7b
    goto :goto_1

    #@7c
    .line 263
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@7e
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->-get0(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    #@81
    move-result-object v1

    #@82
    const/16 v2, 0x6a

    #@84
    aput-byte v2, v1, v0

    #@86
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@88
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->-get0(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    #@8b
    move-result-object v1

    #@8c
    add-int/lit8 v2, v0, 0x1

    #@8e
    const/16 v3, 0x61

    #@90
    aput-byte v3, v1, v2

    #@92
    goto :goto_1

    #@93
    .line 264
    :pswitch_4
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@95
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->-get0(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    #@98
    move-result-object v1

    #@99
    const/16 v2, 0x6b

    #@9b
    aput-byte v2, v1, v0

    #@9d
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@9f
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->-get0(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    #@a2
    move-result-object v1

    #@a3
    add-int/lit8 v2, v0, 0x1

    #@a5
    const/16 v3, 0x6f

    #@a7
    aput-byte v3, v1, v2

    #@a9
    goto :goto_1

    #@aa
    .line 265
    :pswitch_5
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@ac
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->-get0(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    #@af
    move-result-object v1

    #@b0
    const/16 v2, 0x7a

    #@b2
    aput-byte v2, v1, v0

    #@b4
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@b6
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->-get0(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    #@b9
    move-result-object v1

    #@ba
    add-int/lit8 v2, v0, 0x1

    #@bc
    aput-byte v6, v1, v2

    #@be
    goto/16 :goto_1

    #@c0
    .line 266
    :pswitch_6
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@c2
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->-get0(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    #@c5
    move-result-object v1

    #@c6
    aput-byte v6, v1, v0

    #@c8
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@ca
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->-get0(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    #@cd
    move-result-object v1

    #@ce
    add-int/lit8 v2, v0, 0x1

    #@d0
    aput-byte v4, v1, v2

    #@d2
    goto/16 :goto_1

    #@d4
    .line 271
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@d6
    new-instance v2, Ljava/lang/StringBuilder;

    #@d8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@db
    const-string/jumbo v3, "EF_LI="

    #@de
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v2

    #@e2
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@e4
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->-get0(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    #@e7
    move-result-object v3

    #@e8
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@eb
    move-result-object v3

    #@ec
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v2

    #@f0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f3
    move-result-object v2

    #@f4
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    #@f7
    .line 255
    return-void

    #@f8
    .line 259
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
