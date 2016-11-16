.class public abstract Landroid/security/keystore/KeyProperties$Purpose;
.super Ljava/lang/Object;
.source "KeyProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/KeyProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Purpose"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static allFromKeymaster(Ljava/util/Collection;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 117
    .local p0, "purposes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    #@1
    .line 118
    .local v2, "result":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4
    move-result-object v1

    #@5
    .local v1, "keymasterPurpose$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_0

    #@b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e
    move-result-object v3

    #@f
    check-cast v3, Ljava/lang/Integer;

    #@11
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@14
    move-result v0

    #@15
    .line 119
    .local v0, "keymasterPurpose":I
    invoke-static {v0}, Landroid/security/keystore/KeyProperties$Purpose;->fromKeymaster(I)I

    #@18
    move-result v3

    #@19
    or-int/2addr v2, v3

    #@1a
    goto :goto_0

    #@1b
    .line 121
    .end local v0    # "keymasterPurpose":I
    :cond_0
    return v2
.end method

.method public static allToKeymaster(I)[I
    .locals 3
    .param p0, "purposes"    # I

    #@0
    .prologue
    .line 109
    invoke-static {p0}, Landroid/security/keystore/KeyProperties;->-wrap0(I)[I

    #@3
    move-result-object v1

    #@4
    .line 110
    .local v1, "result":[I
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    #@6
    if-ge v0, v2, :cond_0

    #@8
    .line 111
    aget v2, v1, v0

    #@a
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$Purpose;->toKeymaster(I)I

    #@d
    move-result v2

    #@e
    aput v2, v1, v0

    #@10
    .line 110
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 113
    :cond_0
    return-object v1
.end method

.method public static fromKeymaster(I)I
    .locals 3
    .param p0, "purpose"    # I

    #@0
    .prologue
    .line 93
    packed-switch p0, :pswitch_data_0

    #@3
    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Unknown purpose: "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 95
    :pswitch_0
    const/4 v0, 0x1

    #@1e
    return v0

    #@1f
    .line 97
    :pswitch_1
    const/4 v0, 0x2

    #@20
    return v0

    #@21
    .line 99
    :pswitch_2
    const/4 v0, 0x4

    #@22
    return v0

    #@23
    .line 101
    :pswitch_3
    const/16 v0, 0x8

    #@25
    return v0

    #@26
    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static toKeymaster(I)I
    .locals 3
    .param p0, "purpose"    # I

    #@0
    .prologue
    .line 78
    packed-switch p0, :pswitch_data_0

    #@3
    .line 88
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Unknown purpose: "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 80
    :pswitch_1
    const/4 v0, 0x0

    #@1e
    return v0

    #@1f
    .line 82
    :pswitch_2
    const/4 v0, 0x1

    #@20
    return v0

    #@21
    .line 84
    :pswitch_3
    const/4 v0, 0x2

    #@22
    return v0

    #@23
    .line 86
    :pswitch_4
    const/4 v0, 0x3

    #@24
    return v0

    #@25
    .line 78
    nop

    #@26
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
