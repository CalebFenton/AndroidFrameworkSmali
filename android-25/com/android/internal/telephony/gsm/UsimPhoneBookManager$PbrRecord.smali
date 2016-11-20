.class Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;
.super Ljava/lang/Object;
.source "UsimPhoneBookManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PbrRecord"
.end annotation


# instance fields
.field private mFileIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;",
            ">;"
        }
    .end annotation
.end field

.field private mMasterFileRecordNum:I

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->mMasterFileRecordNum:I

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->mMasterFileRecordNum:I

    #@2
    return p1
.end method

.method constructor <init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;[B)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    .param p2, "record"    # [B

    #@0
    .prologue
    .line 581
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 582
    new-instance v1, Landroid/util/SparseArray;

    #@7
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@a
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;

    #@c
    .line 584
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "PBR rec: "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-static {p1, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->-wrap0(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V

    #@27
    .line 585
    new-instance v0, Lcom/android/internal/telephony/gsm/SimTlv;

    #@29
    array-length v1, p2

    #@2a
    const/4 v2, 0x0

    #@2b
    invoke-direct {v0, p2, v2, v1}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    #@2e
    .line 586
    .local v0, "recTlv":Lcom/android/internal/telephony/gsm/SimTlv;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->parseTag(Lcom/android/internal/telephony/gsm/SimTlv;)V

    #@31
    .line 581
    return-void
.end method


# virtual methods
.method parseEfAndSFI(Lcom/android/internal/telephony/gsm/SimTlv;I)V
    .locals 11
    .param p1, "tlv"    # Lcom/android/internal/telephony/gsm/SimTlv;
    .param p2, "parentTag"    # I

    #@0
    .prologue
    const/4 v10, 0x3

    #@1
    const/4 v9, 0x2

    #@2
    .line 611
    const/4 v5, 0x0

    #@3
    .line 613
    .local v5, "tagNumberWithinParentTag":I
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    #@6
    move-result v7

    #@7
    .line 614
    .local v7, "tag":I
    packed-switch v7, :pswitch_data_0

    #@a
    .line 657
    :goto_0
    add-int/lit8 v5, v5, 0x1

    #@c
    .line 658
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_0

    #@12
    .line 608
    return-void

    #@13
    .line 640
    :pswitch_0
    const/4 v4, -0x1

    #@14
    .line 641
    .local v4, "sfi":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    #@17
    move-result-object v6

    #@18
    .line 643
    .local v6, "data":[B
    array-length v0, v6

    #@19
    if-lt v0, v9, :cond_1

    #@1b
    array-length v0, v6

    #@1c
    if-le v0, v10, :cond_2

    #@1e
    .line 644
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    #@20
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v2, "Invalid TLV length: "

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    array-length v2, v6

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->-wrap0(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V

    #@38
    goto :goto_0

    #@39
    .line 648
    :cond_2
    array-length v0, v6

    #@3a
    if-ne v0, v10, :cond_3

    #@3c
    .line 649
    aget-byte v0, v6, v9

    #@3e
    and-int/lit16 v4, v0, 0xff

    #@40
    .line 652
    :cond_3
    const/4 v0, 0x0

    #@41
    aget-byte v0, v6, v0

    #@43
    and-int/lit16 v0, v0, 0xff

    #@45
    shl-int/lit8 v0, v0, 0x8

    #@47
    const/4 v1, 0x1

    #@48
    aget-byte v1, v6, v1

    #@4a
    and-int/lit16 v1, v1, 0xff

    #@4c
    or-int v3, v0, v1

    #@4e
    .line 654
    .local v3, "efid":I
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;

    #@50
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;

    #@52
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    #@54
    move v2, p2

    #@55
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;-><init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;IIII)V

    #@58
    invoke-virtual {v8, v7, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@5b
    goto :goto_0

    #@5c
    .line 614
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

.method parseTag(Lcom/android/internal/telephony/gsm/SimTlv;)V
    .locals 5
    .param p1, "tlv"    # Lcom/android/internal/telephony/gsm/SimTlv;

    #@0
    .prologue
    .line 595
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    #@3
    move-result v1

    #@4
    .line 596
    .local v1, "tag":I
    packed-switch v1, :pswitch_data_0

    #@7
    .line 605
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    #@a
    move-result v3

    #@b
    if-nez v3, :cond_0

    #@d
    .line 589
    return-void

    #@e
    .line 600
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    #@11
    move-result-object v0

    #@12
    .line 601
    .local v0, "data":[B
    new-instance v2, Lcom/android/internal/telephony/gsm/SimTlv;

    #@14
    array-length v3, v0

    #@15
    const/4 v4, 0x0

    #@16
    invoke-direct {v2, v0, v4, v3}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    #@19
    .line 602
    .local v2, "tlvEfSfi":Lcom/android/internal/telephony/gsm/SimTlv;
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->parseEfAndSFI(Lcom/android/internal/telephony/gsm/SimTlv;I)V

    #@1c
    goto :goto_0

    #@1d
    .line 596
    nop

    #@1e
    :pswitch_data_0
    .packed-switch 0xa8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
