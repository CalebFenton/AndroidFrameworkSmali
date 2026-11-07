.class public final Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;
.super Ljava/lang/Object;
.source "Credential.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/pps/Credential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimCredential"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o MAX_IMSI_LENGTH:I = 0xf


# instance fields
.field private greylist-max-o mEapType:I

.field private greylist-max-o mImsi:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 802
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential$1;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential$1;-><init>()V

    sput-object v0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 671
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    .line 697
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    .line 720
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;)V
    .registers 3
    .param p1, "source"    # Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    .line 727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 671
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    .line 697
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    .line 728
    if-eqz p1, :cond_14

    .line 729
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    .line 730
    iget v0, p1, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    iput v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    .line 732
    :cond_14
    return-void
.end method

.method private greylist-max-o verifyImsi()Z
    .registers 6

    .line 826
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Credential"

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    .line 827
    const-string v0, "Missing IMSI"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    return v2

    .line 830
    :cond_11
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0xf

    if-le v0, v3, :cond_38

    .line 831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMSI exceeding maximum length: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    return v2

    .line 837
    :cond_38
    const/4 v0, 0x0

    .line 838
    .local v0, "stopChar":C
    const/4 v1, 0x0

    .local v1, "nonDigit":I
    :goto_3a
    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_54

    .line 839
    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 840
    const/16 v3, 0x30

    if-lt v0, v3, :cond_54

    const/16 v3, 0x39

    if-le v0, v3, :cond_51

    .line 841
    goto :goto_54

    .line 838
    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 845
    :cond_54
    :goto_54
    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v1, v3, :cond_5e

    .line 846
    return v4

    .line 848
    :cond_5e
    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    if-ne v1, v3, :cond_6c

    const/16 v3, 0x2a

    if-ne v0, v3, :cond_6c

    .line 850
    return v4

    .line 852
    :cond_6c
    return v2
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 736
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 741
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 742
    return v0

    .line 744
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 745
    return v2

    .line 748
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    .line 749
    .local v1, "that":Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;
    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1e

    iget v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    iget v4, v1, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    if-ne v3, v4, :cond_1e

    goto :goto_1f

    :cond_1e
    move v0, v2

    :goto_1f
    return v0
.end method

.method public whitelist getEapType()I
    .registers 2

    .line 714
    iget v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    return v0
.end method

.method public whitelist getImsi()Ljava/lang/String;
    .registers 2

    .line 688
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 755
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    iget v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist setEapType(I)V
    .registers 2
    .param p1, "eapType"    # I

    .line 705
    iput p1, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    .line 706
    return-void
.end method

.method public whitelist setImsi(Ljava/lang/String;)V
    .registers 2
    .param p1, "imsi"    # Ljava/lang/String;

    .line 679
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    .line 680
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 762
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    const-string v2, "\n"

    if-eqz v1, :cond_48

    .line 763
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x6

    if-le v1, v3, :cond_39

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x2a

    if-eq v1, v4, :cond_39

    .line 765
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "****"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "imsi":Ljava/lang/String;
    goto :goto_3b

    .line 767
    .end local v1    # "imsi":Ljava/lang/String;
    :cond_39
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    .line 769
    .restart local v1    # "imsi":Ljava/lang/String;
    :goto_3b
    const-string v3, "IMSI: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    .end local v1    # "imsi":Ljava/lang/String;
    :cond_48
    const-string v1, "EAPType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o validate()Z
    .registers 4

    .line 791
    invoke-direct {p0}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->verifyImsi()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 792
    return v1

    .line 794
    :cond_8
    iget v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    const/16 v2, 0x12

    if-eq v0, v2, :cond_35

    iget v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    const/16 v2, 0x17

    if-eq v0, v2, :cond_35

    iget v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    const/16 v2, 0x32

    if-eq v0, v2, :cond_35

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid EAP Type for SIM credential: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Credential"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    return v1

    .line 799
    :cond_35
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 777
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 778
    iget v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 779
    return-void
.end method
