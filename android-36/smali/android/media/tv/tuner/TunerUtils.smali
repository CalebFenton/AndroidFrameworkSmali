.class public final Landroid/media/tv/tuner/TunerUtils;
.super Ljava/lang/Object;
.source "TunerUtils.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist checkResourceAccessible(Ljava/lang/String;Z)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "accessible"    # Z

    .line 181
    if-eqz p1, :cond_3

    .line 184
    return-void

    .line 182
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is inaccessible"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist checkResourceState(Ljava/lang/String;Z)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "closed"    # Z

    .line 170
    if-nez p1, :cond_3

    .line 173
    return-void

    .line 171
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getFilterSubtype(II)I
    .registers 11
    .param p0, "mainType"    # I
    .param p1, "subtype"    # I

    .line 41
    const/16 v0, 0x8

    const/4 v1, 0x6

    const/4 v2, 0x7

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ne p0, v8, :cond_19

    .line 42
    packed-switch p1, :pswitch_data_6c

    .line 62
    :pswitch_f
    goto :goto_49

    .line 60
    :pswitch_10
    return v0

    .line 56
    :pswitch_11
    return v1

    .line 50
    :pswitch_12
    return v5

    .line 58
    :pswitch_13
    return v2

    .line 54
    :pswitch_14
    return v3

    .line 52
    :pswitch_15
    return v4

    .line 48
    :pswitch_16
    return v7

    .line 46
    :pswitch_17
    return v8

    .line 44
    :pswitch_18
    return v6

    .line 64
    :cond_19
    if-ne p0, v7, :cond_27

    .line 65
    packed-switch p1, :pswitch_data_84

    .line 83
    :pswitch_1e
    goto :goto_49

    .line 73
    :pswitch_1f
    return v5

    .line 79
    :pswitch_20
    return v1

    .line 81
    :pswitch_21
    return v2

    .line 77
    :pswitch_22
    return v3

    .line 75
    :pswitch_23
    return v4

    .line 71
    :pswitch_24
    return v7

    .line 69
    :pswitch_25
    return v8

    .line 67
    :pswitch_26
    return v6

    .line 86
    :cond_27
    if-ne p0, v4, :cond_33

    .line 87
    sparse-switch p1, :sswitch_data_9e

    .line 101
    goto :goto_49

    .line 99
    :sswitch_2d
    return v3

    .line 97
    :sswitch_2e
    return v4

    .line 95
    :sswitch_2f
    return v5

    .line 93
    :sswitch_30
    return v7

    .line 91
    :sswitch_31
    return v8

    .line 89
    :sswitch_32
    return v6

    .line 103
    :cond_33
    if-ne p0, v0, :cond_3d

    .line 104
    sparse-switch p1, :sswitch_data_b8

    .line 114
    goto :goto_49

    .line 110
    :sswitch_39
    return v7

    .line 112
    :sswitch_3a
    return v5

    .line 108
    :sswitch_3b
    return v8

    .line 106
    :sswitch_3c
    return v6

    .line 116
    :cond_3d
    const/16 v0, 0x10

    if-ne p0, v0, :cond_49

    .line 117
    sparse-switch p1, :sswitch_data_ca

    goto :goto_49

    .line 123
    :sswitch_45
    return v7

    .line 125
    :sswitch_46
    return v5

    .line 121
    :sswitch_47
    return v8

    .line 119
    :sswitch_48
    return v6

    .line 130
    :cond_49
    :goto_49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid filter types. Main type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", subtype="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_f
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1f
    .end packed-switch

    :sswitch_data_9e
    .sparse-switch
        0x0 -> :sswitch_32
        0x1 -> :sswitch_31
        0xb -> :sswitch_30
        0xc -> :sswitch_2f
        0xd -> :sswitch_2e
        0xe -> :sswitch_2d
    .end sparse-switch

    :sswitch_data_b8
    .sparse-switch
        0x0 -> :sswitch_3c
        0x1 -> :sswitch_3b
        0xe -> :sswitch_3a
        0xf -> :sswitch_39
    .end sparse-switch

    :sswitch_data_ca
    .sparse-switch
        0x0 -> :sswitch_48
        0x1 -> :sswitch_47
        0xe -> :sswitch_46
        0x10 -> :sswitch_45
    .end sparse-switch
.end method

.method public static blacklist throwExceptionForResult(ILjava/lang/String;)V
    .registers 5
    .param p0, "r"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .line 140
    if-nez p1, :cond_4

    .line 141
    const-string p1, ""

    .line 143
    :cond_4
    packed-switch p0, :pswitch_data_88

    .line 161
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :pswitch_2a
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :pswitch_43
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0, p1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :pswitch_49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :pswitch_4f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :pswitch_55
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state: not initialized. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :pswitch_6e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state: resource unavailable. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :pswitch_87
    return-void

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_87
        :pswitch_6e
        :pswitch_55
        :pswitch_4f
        :pswitch_49
        :pswitch_43
        :pswitch_2a
    .end packed-switch
.end method
