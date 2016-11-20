.class Lcom/android/internal/telephony/cat/SelectItemResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field private mId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    #@3
    .line 55
    iput p1, p0, Lcom/android/internal/telephony/cat/SelectItemResponseData;->mId:I

    #@5
    .line 53
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 2
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    #@0
    .prologue
    .line 61
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    #@5
    move-result v1

    #@6
    or-int/lit16 v0, v1, 0x80

    #@8
    .line 62
    .local v0, "tag":I
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@b
    .line 63
    const/4 v1, 0x1

    #@c
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@f
    .line 64
    iget v1, p0, Lcom/android/internal/telephony/cat/SelectItemResponseData;->mId:I

    #@11
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@14
    .line 59
    return-void
.end method
