.class public abstract Landroid/icu/impl/UResource$Value;
.super Ljava/lang/Object;
.source "UResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Value"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public abstract getAliasString()Ljava/lang/String;
.end method

.method public abstract getBinary()Ljava/nio/ByteBuffer;
.end method

.method public abstract getInt()I
.end method

.method public abstract getIntVector()[I
.end method

.method public abstract getString()Ljava/lang/String;
.end method

.method public abstract getType()I
.end method

.method public abstract getUInt()I
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 289
    invoke-virtual {p0}, Landroid/icu/impl/UResource$Value;->getType()I

    #@4
    move-result v3

    #@5
    sparse-switch v3, :sswitch_data_0

    #@8
    .line 312
    const-string/jumbo v3, "???"

    #@b
    return-object v3

    #@c
    .line 291
    :sswitch_0
    invoke-virtual {p0}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    return-object v3

    #@11
    .line 293
    :sswitch_1
    invoke-virtual {p0}, Landroid/icu/impl/UResource$Value;->getInt()I

    #@14
    move-result v3

    #@15
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    return-object v3

    #@1a
    .line 295
    :sswitch_2
    invoke-virtual {p0}, Landroid/icu/impl/UResource$Value;->getIntVector()[I

    #@1d
    move-result-object v1

    #@1e
    .line 296
    .local v1, "iv":[I
    new-instance v2, Ljava/lang/StringBuilder;

    #@20
    const-string/jumbo v3, "["

    #@23
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@26
    .line 297
    .local v2, "sb":Ljava/lang/StringBuilder;
    array-length v3, v1

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    const-string/jumbo v4, "]{"

    #@2e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    .line 298
    array-length v3, v1

    #@32
    if-eqz v3, :cond_0

    #@34
    .line 299
    aget v3, v1, v5

    #@36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    .line 300
    const/4 v0, 0x1

    #@3a
    .local v0, "i":I
    :goto_0
    array-length v3, v1

    #@3b
    if-ge v0, v3, :cond_0

    #@3d
    .line 301
    const-string/jumbo v3, ", "

    #@40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    aget v4, v1, v0

    #@46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49
    .line 300
    add-int/lit8 v0, v0, 0x1

    #@4b
    goto :goto_0

    #@4c
    .line 304
    .end local v0    # "i":I
    :cond_0
    const/16 v3, 0x7d

    #@4e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@51
    move-result-object v3

    #@52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v3

    #@56
    return-object v3

    #@57
    .line 306
    .end local v1    # "iv":[I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :sswitch_3
    const-string/jumbo v3, "(binary blob)"

    #@5a
    return-object v3

    #@5b
    .line 308
    :sswitch_4
    const-string/jumbo v3, "(array)"

    #@5e
    return-object v3

    #@5f
    .line 310
    :sswitch_5
    const-string/jumbo v3, "(table)"

    #@62
    return-object v3

    #@63
    .line 289
    nop

    #@64
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_3
        0x2 -> :sswitch_5
        0x7 -> :sswitch_1
        0x8 -> :sswitch_4
        0xe -> :sswitch_2
    .end sparse-switch
.end method
