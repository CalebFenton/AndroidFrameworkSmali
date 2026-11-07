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
.field private blacklist mFileIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMainFileRecordNum:I

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFileIds(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMainFileRecordNum(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->mMainFileRecordNum:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMainFileRecordNum(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->mMainFileRecordNum:I

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;[B)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 592
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 593
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PBR rec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->-$$Nest$mlog(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V

    .line 596
    new-instance p1, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v0, p2

    const/4 v1, 0x0

    invoke-direct {p1, p2, v1, v0}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 597
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->parseTag(Lcom/android/internal/telephony/gsm/SimTlv;)V

    return-void
.end method


# virtual methods
.method blacklist parseEfAndSFI(Lcom/android/internal/telephony/gsm/SimTlv;I)V
    .registers 12

    const/4 v0, 0x0

    move v6, v0

    .line 624
    :goto_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v7

    packed-switch v7, :pswitch_data_62

    move v3, p2

    goto :goto_56

    .line 652
    :pswitch_b
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v1

    .line 654
    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_17

    array-length v2, v1

    const/4 v4, 0x3

    if-le v2, v4, :cond_19

    :cond_17
    move v3, p2

    goto :goto_3f

    .line 659
    :cond_19
    array-length v2, v1

    if-ne v2, v4, :cond_22

    .line 660
    aget-byte v2, v1, v3

    and-int/lit16 v2, v2, 0xff

    :goto_20
    move v5, v2

    goto :goto_24

    :cond_22
    const/4 v2, -0x1

    goto :goto_20

    .line 663
    :goto_24
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x1

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    or-int v4, v2, v1

    .line 665
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;-><init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;IIII)V

    invoke-virtual {v8, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_56

    .line 655
    :goto_3f
    iget-object p2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid TLV length: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->-$$Nest$mlog(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V

    :goto_56
    add-int/lit8 v6, v6, 0x1

    .line 669
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    move-result p2

    if-nez p2, :cond_5f

    return-void

    :cond_5f
    move p2, v3

    goto :goto_2

    nop

    :pswitch_data_62
    .packed-switch 0xc0
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method blacklist parseTag(Lcom/android/internal/telephony/gsm/SimTlv;)V
    .registers 7

    .line 606
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v0

    packed-switch v0, :pswitch_data_1e

    goto :goto_16

    .line 611
    :pswitch_8
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v1

    .line 612
    new-instance v2, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4, v3}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 613
    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->parseEfAndSFI(Lcom/android/internal/telephony/gsm/SimTlv;I)V

    .line 616
    :goto_16
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    nop

    :pswitch_data_1e
    .packed-switch 0xa8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method
