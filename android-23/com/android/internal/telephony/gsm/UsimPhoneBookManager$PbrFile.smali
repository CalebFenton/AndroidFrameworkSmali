.class Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;
.super Ljava/lang/Object;
.source "UsimPhoneBookManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PbrFile"
.end annotation


# instance fields
.field mFileIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 385
    .local p2, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 386
    new-instance v4, Ljava/util/HashMap;

    #@7
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    #@a
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    #@c
    .line 388
    const/4 v0, 0x0

    #@d
    .line 389
    .local v0, "recNum":I
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v3

    #@11
    .local v3, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_0

    #@17
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v2

    #@1b
    check-cast v2, [B

    #@1d
    .line 390
    .local v2, "record":[B
    new-instance v1, Lcom/android/internal/telephony/gsm/SimTlv;

    #@1f
    array-length v4, v2

    #@20
    const/4 v5, 0x0

    #@21
    invoke-direct {v1, v2, v5, v4}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    #@24
    .line 391
    .local v1, "recTlv":Lcom/android/internal/telephony/gsm/SimTlv;
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->parseTag(Lcom/android/internal/telephony/gsm/SimTlv;I)V

    #@27
    .line 392
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 385
    .end local v1    # "recTlv":Lcom/android/internal/telephony/gsm/SimTlv;
    .end local v2    # "record":[B
    :cond_0
    return-void
.end method


# virtual methods
.method parseEf(Lcom/android/internal/telephony/gsm/SimTlv;Ljava/util/Map;I)V
    .locals 7
    .param p1, "tlv"    # Lcom/android/internal/telephony/gsm/SimTlv;
    .param p3, "parentTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/SimTlv;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "val":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v6, 0x1

    #@1
    .line 419
    const/4 v3, 0x0

    #@2
    .line 421
    .local v3, "tagNumberWithinParentTag":I
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    #@5
    move-result v2

    #@6
    .line 422
    .local v2, "tag":I
    const/16 v4, 0xa9

    #@8
    if-ne p3, v4, :cond_1

    #@a
    const/16 v4, 0xca

    #@c
    if-ne v2, v4, :cond_1

    #@e
    .line 423
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    #@10
    invoke-static {v4, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->-set0(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Z)Z

    #@13
    .line 424
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    #@15
    invoke-static {v4, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->-set1(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;I)I

    #@18
    .line 426
    :cond_1
    packed-switch v2, :pswitch_data_0

    #@1b
    .line 444
    :goto_0
    add-int/lit8 v3, v3, 0x1

    #@1d
    .line 445
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    #@20
    move-result v4

    #@21
    if-nez v4, :cond_0

    #@23
    .line 416
    return-void

    #@24
    .line 439
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    #@27
    move-result-object v0

    #@28
    .line 440
    .local v0, "data":[B
    const/4 v4, 0x0

    #@29
    aget-byte v4, v0, v4

    #@2b
    and-int/lit16 v4, v4, 0xff

    #@2d
    shl-int/lit8 v4, v4, 0x8

    #@2f
    aget-byte v5, v0, v6

    #@31
    and-int/lit16 v5, v5, 0xff

    #@33
    or-int v1, v4, v5

    #@35
    .line 441
    .local v1, "efid":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@38
    move-result-object v4

    #@39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3c
    move-result-object v5

    #@3d
    invoke-interface {p2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@40
    goto :goto_0

    #@41
    .line 426
    nop

    #@42
    :pswitch_data_0
    .packed-switch 0xc0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method parseTag(Lcom/android/internal/telephony/gsm/SimTlv;I)V
    .locals 6
    .param p1, "tlv"    # Lcom/android/internal/telephony/gsm/SimTlv;
    .param p2, "recNum"    # I

    #@0
    .prologue
    .line 400
    new-instance v3, Ljava/util/HashMap;

    #@2
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 402
    .local v3, "val":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    #@8
    move-result v1

    #@9
    .line 403
    .local v1, "tag":I
    packed-switch v1, :pswitch_data_0

    #@c
    .line 412
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    #@f
    move-result v4

    #@10
    if-nez v4, :cond_0

    #@12
    .line 413
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    #@14
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v5

    #@18
    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    .line 396
    return-void

    #@1c
    .line 407
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    #@1f
    move-result-object v0

    #@20
    .line 408
    .local v0, "data":[B
    new-instance v2, Lcom/android/internal/telephony/gsm/SimTlv;

    #@22
    array-length v4, v0

    #@23
    const/4 v5, 0x0

    #@24
    invoke-direct {v2, v0, v5, v4}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    #@27
    .line 409
    .local v2, "tlvEf":Lcom/android/internal/telephony/gsm/SimTlv;
    invoke-virtual {p0, v2, v3, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->parseEf(Lcom/android/internal/telephony/gsm/SimTlv;Ljava/util/Map;I)V

    #@2a
    goto :goto_0

    #@2b
    .line 403
    nop

    #@2c
    :pswitch_data_0
    .packed-switch 0xa8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
