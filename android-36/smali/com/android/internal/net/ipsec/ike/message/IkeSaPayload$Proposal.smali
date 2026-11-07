.class public abstract Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;
.super Ljava/lang/Object;
.source "IkeSaPayload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Proposal"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal$TransformDecoderImpl;
    }
.end annotation


# static fields
.field private static final blacklist LAST_PROPOSAL:B = 0x0t

.field private static final blacklist NOT_LAST_PROPOSAL:B = 0x2t

.field private static final blacklist PROPOSAL_HEADER_LEN:I = 0x8

.field private static final blacklist PROPOSAL_RESERVED_FIELD_LEN:I = 0x1

.field private static blacklist sTransformDecoder:Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$TransformDecoder;


# instance fields
.field public final blacklist hasUnrecognizedTransform:Z

.field public final blacklist number:B

.field public final blacklist protocolId:I

.field public final blacklist spi:J

.field public final blacklist spiSize:B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 618
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal$TransformDecoderImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal$TransformDecoderImpl;-><init>(Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload-IA;)V

    sput-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;->sTransformDecoder:Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$TransformDecoder;

    return-void
.end method

.method constructor blacklist <init>(BIBJZ)V
    .registers 7
    .param p1, "number"    # B
    .param p2, "protocolId"    # I
    .param p3, "spiSize"    # B
    .param p4, "spi"    # J
    .param p6, "hasUnrecognizedTransform"    # Z

    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 636
    iput-byte p1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;->number:B

    .line 637
    iput p2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;->protocolId:I

    .line 638
    iput-byte p3, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;->spiSize:B

    .line 639
    iput-wide p4, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;->spi:J

    .line 640
    iput-boolean p6, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;->hasUnrecognizedTransform:Z

    .line 641
    return-void
.end method

.method static blacklist readFrom(Ljava/nio/ByteBuffer;)Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;
    .registers 21
    .param p0, "inputBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
        }
    .end annotation

    .line 645
    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 646
    .local v1, "isLast":B
    if-eqz v1, :cond_25

    const/4 v2, 0x2

    if-ne v1, v2, :cond_c

    goto :goto_25

    .line 647
    :cond_c
    new-instance v2, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid value of Last Proposal Substructure: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 651
    :cond_25
    :goto_25
    const/4 v2, 0x1

    new-array v3, v2, [B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 653
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v3

    .line 654
    .local v3, "length":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .line 655
    .local v5, "number":B
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v11

    .line 657
    .local v11, "protocolId":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .line 658
    .local v6, "spiSize":B
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v12

    .line 662
    .local v12, "transformCount":I
    const-wide/16 v7, 0x0

    .line 663
    .local v7, "spi":J
    sparse-switch v6, :sswitch_data_176

    .line 674
    move/from16 v19, v1

    move/from16 v17, v3

    move v3, v6

    .end local v1    # "isLast":B
    .end local v6    # "spiSize":B
    .local v3, "spiSize":B
    .local v17, "length":I
    .local v19, "isLast":B
    new-instance v0, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value of spiSize in Proposal Substructure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 671
    .end local v17    # "length":I
    .end local v19    # "isLast":B
    .restart local v1    # "isLast":B
    .local v3, "length":I
    .restart local v6    # "spiSize":B
    :sswitch_6e
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v7

    .line 672
    goto :goto_7d

    .line 668
    :sswitch_73
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v7

    .line 669
    goto :goto_7d

    .line 666
    :sswitch_7c
    nop

    .line 678
    :goto_7d
    sget-object v4, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;->sTransformDecoder:Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$TransformDecoder;

    .line 679
    invoke-interface {v4, v12, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$TransformDecoder;->decodeTransforms(ILjava/nio/ByteBuffer;)[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;

    move-result-object v13

    .line 683
    .local v13, "transformArray":[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    move-object v14, v4

    .line 684
    .local v14, "encryptAlgoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;>;"
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    move-object v15, v4

    .line 685
    .local v15, "prfList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$PrfTransform;>;"
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 686
    .local v4, "integAlgoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;>;"
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 687
    .local v9, "dhGroupList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;>;"
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 689
    .local v10, "esnList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;>;"
    const/16 v16, 0x0

    .line 691
    .local v16, "hasUnrecognizedTransform":Z
    array-length v2, v13

    const/16 v18, 0x0

    move/from16 v0, v18

    :goto_a5
    if-ge v0, v2, :cond_de

    move/from16 v18, v0

    aget-object v0, v13, v18

    .line 692
    .local v0, "transform":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;
    move/from16 v19, v1

    .end local v1    # "isLast":B
    .restart local v19    # "isLast":B
    iget v1, v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;->type:I

    packed-switch v1, :pswitch_data_184

    .line 709
    const/4 v1, 0x1

    move/from16 v16, v1

    .end local v16    # "hasUnrecognizedTransform":Z
    .local v1, "hasUnrecognizedTransform":Z
    goto :goto_d9

    .line 706
    .end local v1    # "hasUnrecognizedTransform":Z
    .restart local v16    # "hasUnrecognizedTransform":Z
    :pswitch_b6
    move-object v1, v0

    check-cast v1, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 707
    goto :goto_d9

    .line 703
    :pswitch_bd
    move-object v1, v0

    check-cast v1, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 704
    goto :goto_d9

    .line 700
    :pswitch_c4
    move-object v1, v0

    check-cast v1, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 701
    goto :goto_d9

    .line 697
    :pswitch_cb
    move-object v1, v0

    check-cast v1, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$PrfTransform;

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 698
    goto :goto_d9

    .line 694
    :pswitch_d2
    move-object v1, v0

    check-cast v1, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 695
    nop

    .line 691
    .end local v0    # "transform":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;
    :goto_d9
    add-int/lit8 v0, v18, 0x1

    move/from16 v1, v19

    goto :goto_a5

    .line 713
    .end local v19    # "isLast":B
    .local v1, "isLast":B
    :cond_de
    move/from16 v19, v1

    .end local v1    # "isLast":B
    .restart local v19    # "isLast":B
    const/4 v0, 0x1

    if-ne v11, v0, :cond_12d

    .line 714
    new-instance v0, Landroid/net/ipsec/ike/IkeSaProposal;

    .line 717
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;

    .line 716
    invoke-interface {v14, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;

    .line 718
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$PrfTransform;

    invoke-interface {v15, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$PrfTransform;

    .line 719
    move/from16 v17, v3

    .end local v3    # "length":I
    .restart local v17    # "length":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;

    invoke-interface {v4, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;

    .line 720
    move-object/from16 v18, v4

    .end local v4    # "integAlgoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;>;"
    .local v18, "integAlgoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;

    invoke-interface {v9, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/ipsec/ike/IkeSaProposal;-><init>([Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$PrfTransform;[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;)V

    .line 721
    .local v0, "saProposal":Landroid/net/ipsec/ike/IkeSaProposal;
    new-instance v4, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;

    move-object v1, v9

    move-object v2, v10

    move/from16 v10, v16

    move-object v9, v0

    move-object/from16 v0, v18

    .end local v16    # "hasUnrecognizedTransform":Z
    .end local v18    # "integAlgoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;>;"
    .local v0, "integAlgoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;>;"
    .local v1, "dhGroupList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;>;"
    .local v2, "esnList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;>;"
    .local v9, "saProposal":Landroid/net/ipsec/ike/IkeSaProposal;
    .local v10, "hasUnrecognizedTransform":Z
    invoke-direct/range {v4 .. v10}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;-><init>(BBJLandroid/net/ipsec/ike/IkeSaProposal;Z)V

    move v3, v6

    move-object v6, v4

    move-object v4, v9

    move v9, v10

    .end local v6    # "spiSize":B
    .end local v10    # "hasUnrecognizedTransform":Z
    .local v3, "spiSize":B
    .local v4, "saProposal":Landroid/net/ipsec/ike/IkeSaProposal;
    .local v9, "hasUnrecognizedTransform":Z
    return-object v6

    .line 723
    .end local v0    # "integAlgoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;>;"
    .end local v1    # "dhGroupList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;>;"
    .end local v2    # "esnList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;>;"
    .end local v17    # "length":I
    .local v3, "length":I
    .local v4, "integAlgoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;>;"
    .restart local v6    # "spiSize":B
    .local v9, "dhGroupList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;>;"
    .local v10, "esnList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;>;"
    .restart local v16    # "hasUnrecognizedTransform":Z
    :cond_12d
    move/from16 v17, v3

    move-object v0, v4

    move v3, v6

    move-object v1, v9

    move-object v2, v10

    move/from16 v9, v16

    .end local v4    # "integAlgoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;>;"
    .end local v6    # "spiSize":B
    .end local v10    # "esnList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;>;"
    .end local v16    # "hasUnrecognizedTransform":Z
    .restart local v0    # "integAlgoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;>;"
    .restart local v1    # "dhGroupList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;>;"
    .restart local v2    # "esnList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;>;"
    .local v3, "spiSize":B
    .local v9, "hasUnrecognizedTransform":Z
    .restart local v17    # "length":I
    new-instance v4, Landroid/net/ipsec/ike/ChildSaProposal;

    .line 726
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;

    .line 725
    invoke-interface {v14, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;

    .line 727
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;

    invoke-interface {v0, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;

    .line 728
    move-object/from16 v18, v0

    .end local v0    # "integAlgoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;>;"
    .restart local v18    # "integAlgoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;

    .line 729
    move-object/from16 v16, v1

    .end local v1    # "dhGroupList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;>;"
    .local v16, "dhGroupList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;

    invoke-direct {v4, v6, v10, v0, v1}, Landroid/net/ipsec/ike/ChildSaProposal;-><init>([Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;)V

    .line 730
    .local v4, "saProposal":Landroid/net/ipsec/ike/ChildSaProposal;
    move-wide v6, v7

    move-object v8, v4

    .end local v4    # "saProposal":Landroid/net/ipsec/ike/ChildSaProposal;
    .end local v7    # "spi":J
    .local v6, "spi":J
    .local v8, "saProposal":Landroid/net/ipsec/ike/ChildSaProposal;
    new-instance v4, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;-><init>(BJLandroid/net/ipsec/ike/ChildSaProposal;Z)V

    return-object v4

    :sswitch_data_176
    .sparse-switch
        0x0 -> :sswitch_7c
        0x4 -> :sswitch_73
        0x8 -> :sswitch_6e
    .end sparse-switch

    :pswitch_data_184
    .packed-switch 0x1
        :pswitch_d2
        :pswitch_cb
        :pswitch_c4
        :pswitch_bd
        :pswitch_b6
    .end packed-switch
.end method

.method static blacklist resetTransformDecoder()V
    .registers 2

    .line 756
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal$TransformDecoderImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal$TransformDecoderImpl;-><init>(Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload-IA;)V

    sput-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;->sTransformDecoder:Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$TransformDecoder;

    .line 757
    return-void
.end method

.method static blacklist setTransformDecoder(Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$TransformDecoder;)V
    .registers 1
    .param p0, "decoder"    # Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$TransformDecoder;

    .line 750
    sput-object p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;->sTransformDecoder:Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$TransformDecoder;

    .line 751
    return-void
.end method


# virtual methods
.method protected blacklist encodeToByteBuffer(ZLjava/nio/ByteBuffer;)V
    .registers 10
    .param p1, "isLast"    # Z
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 768
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;->getSaProposal()Landroid/net/ipsec/ike/SaProposal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ipsec/ike/SaProposal;->getAllTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;

    move-result-object v0

    .line 769
    .local v0, "allTransforms":[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;
    const/4 v1, 0x0

    if-eqz p1, :cond_d

    move v2, v1

    goto :goto_e

    :cond_d
    const/4 v2, 0x2

    .line 771
    .local v2, "isLastIndicator":B
    :goto_e
    nop

    .line 772
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [B

    .line 773
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 774
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;->getProposalLength()I

    move-result v5

    int-to-short v5, v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-byte v5, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;->number:B

    .line 775
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget v5, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;->protocolId:I

    int-to-byte v5, v5

    .line 776
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-byte v5, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;->spiSize:B

    .line 777
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v3

    array-length v5, v0

    int-to-byte v5, v5

    .line 778
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 780
    iget-byte v3, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;->spiSize:B

    sparse-switch v3, :sswitch_data_7e

    .line 791
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid value of spiSize in Proposal Substructure: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;->spiSize:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 788
    :sswitch_5b
    iget-wide v5, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;->spi:J

    invoke-virtual {p2, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 789
    goto :goto_69

    .line 785
    :sswitch_61
    iget-wide v5, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;->spi:J

    long-to-int v3, v5

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 786
    goto :goto_69

    .line 783
    :sswitch_68
    nop

    .line 796
    :goto_69
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6a
    array-length v5, v0

    if-ge v3, v5, :cond_7c

    .line 798
    aget-object v5, v0, v3

    array-length v6, v0

    sub-int/2addr v6, v4

    if-ne v3, v6, :cond_75

    move v6, v4

    goto :goto_76

    :cond_75
    move v6, v1

    :goto_76
    invoke-virtual {v5, v6, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;->encodeToByteBuffer(ZLjava/nio/ByteBuffer;)V

    .line 796
    add-int/lit8 v3, v3, 0x1

    goto :goto_6a

    .line 800
    .end local v3    # "i":I
    :cond_7c
    return-void

    nop

    :sswitch_data_7e
    .sparse-switch
        0x0 -> :sswitch_68
        0x4 -> :sswitch_61
        0x8 -> :sswitch_5b
    .end sparse-switch
.end method

.method protected blacklist getProposalLength()I
    .registers 7

    .line 803
    iget-byte v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;->spiSize:B

    add-int/lit8 v0, v0, 0x8

    .line 805
    .local v0, "len":I
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;->getSaProposal()Landroid/net/ipsec/ike/SaProposal;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ipsec/ike/SaProposal;->getAllTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;

    move-result-object v1

    .line 806
    .local v1, "allTransforms":[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_1a

    aget-object v4, v1, v3

    .local v4, "t":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;
    invoke-virtual {v4}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;->getTransformLength()I

    move-result v5

    add-int/2addr v0, v5

    .end local v4    # "t":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 807
    :cond_1a
    return v0
.end method

.method abstract blacklist getSaProposal()Landroid/net/ipsec/ike/SaProposal;
.end method

.method blacklist isNegotiatedFrom(Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;)Z
    .registers 4
    .param p1, "reqProposal"    # Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;

    .line 761
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;->protocolId:I

    iget v1, p1, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;->protocolId:I

    if-ne v0, v1, :cond_1a

    iget-byte v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;->number:B

    iget-byte v1, p1, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;->number:B

    if-eq v0, v1, :cond_d

    goto :goto_1a

    .line 764
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;->getSaProposal()Landroid/net/ipsec/ike/SaProposal;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;->getSaProposal()Landroid/net/ipsec/ike/SaProposal;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ipsec/ike/SaProposal;->isNegotiatedFrom(Landroid/net/ipsec/ike/SaProposal;)Z

    move-result v0

    return v0

    .line 762
    :cond_1a
    :goto_1a
    const/4 v0, 0x0

    return v0
.end method

.method abstract blacklist releaseSpiResourceIfExists()V
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Proposal("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;->number:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;->getSaProposal()Landroid/net/ipsec/ike/SaProposal;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ipsec/ike/SaProposal;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
