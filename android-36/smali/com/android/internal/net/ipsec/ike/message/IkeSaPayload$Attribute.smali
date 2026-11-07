.class public abstract Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Attribute;
.super Ljava/lang/Object;
.source "IkeSaPayload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Attribute"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Attribute$AttributeType;
    }
.end annotation


# static fields
.field private static final blacklist ATTRIBUTE_FORMAT_MASK:I = 0x8000

.field static final blacklist ATTRIBUTE_FORMAT_TV:I = 0x8000

.field public static final blacklist ATTRIBUTE_TYPE_KEY_LENGTH:I = 0xe

.field private static final blacklist ATTRIBUTE_TYPE_MASK:I = 0x7fff

.field static final blacklist TVL_ATTRIBUTE_HEADER_LEN:I = 0x4

.field static final blacklist TV_ATTRIBUTE_TOTAL_LEN:I = 0x4

.field static final blacklist TV_ATTRIBUTE_VALUE_LEN:I = 0x2


# instance fields
.field public final blacklist type:I


# direct methods
.method protected constructor blacklist <init>(I)V
    .registers 2
    .param p1, "type"    # I

    .line 1809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1810
    iput p1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Attribute;->type:I

    .line 1811
    return-void
.end method

.method static blacklist readFrom(Ljava/nio/ByteBuffer;)Landroid/util/Pair;
    .registers 9
    .param p0, "inputBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Attribute;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
        }
    .end annotation

    .line 1816
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 1817
    .local v0, "formatAndType":S
    const v1, 0x8000

    and-int v2, v0, v1

    .line 1818
    .local v2, "format":I
    and-int/lit16 v3, v0, 0x7fff

    .line 1820
    .local v3, "type":I
    const/4 v4, 0x0

    .line 1821
    .local v4, "length":I
    const/4 v5, 0x0

    new-array v5, v5, [B

    .line 1822
    .local v5, "value":[B
    if-ne v2, v1, :cond_16

    .line 1824
    const/4 v1, 0x4

    .line 1825
    .end local v4    # "length":I
    .local v1, "length":I
    const/4 v4, 0x2

    new-array v4, v4, [B

    .end local v5    # "value":[B
    .local v4, "value":[B
    goto :goto_27

    .line 1828
    .end local v1    # "length":I
    .local v4, "length":I
    .restart local v5    # "value":[B
    :cond_16
    const/16 v1, 0xe

    if-eq v3, v1, :cond_4b

    .line 1832
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v1

    .line 1833
    .end local v4    # "length":I
    .restart local v1    # "length":I
    add-int/lit8 v4, v1, -0x4

    .line 1835
    .local v4, "valueLen":I
    new-array v5, v4, [B

    move-object v4, v5

    .line 1838
    .end local v5    # "value":[B
    .local v4, "value":[B
    :goto_27
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1840
    packed-switch v3, :pswitch_data_54

    .line 1844
    new-instance v5, Landroid/util/Pair;

    new-instance v6, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$UnrecognizedAttribute;

    invoke-direct {v6, v3, v4}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$UnrecognizedAttribute;-><init>(I[B)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    .line 1842
    :pswitch_3c
    new-instance v5, Landroid/util/Pair;

    new-instance v6, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$KeyLengthAttribute;

    invoke-direct {v6, v4}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$KeyLengthAttribute;-><init>([B)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    .line 1829
    .end local v1    # "length":I
    .local v4, "length":I
    .restart local v5    # "value":[B
    :cond_4b
    new-instance v1, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v6, "Wrong format in Transform Attribute"

    invoke-direct {v1, v6}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_54
    .packed-switch 0xe
        :pswitch_3c
    .end packed-switch
.end method


# virtual methods
.method protected abstract blacklist encodeToByteBuffer(Ljava/nio/ByteBuffer;)V
.end method

.method protected abstract blacklist getAttributeLength()I
.end method
