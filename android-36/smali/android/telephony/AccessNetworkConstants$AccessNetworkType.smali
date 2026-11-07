.class public final Landroid/telephony/AccessNetworkConstants$AccessNetworkType;
.super Ljava/lang/Object;
.source "AccessNetworkConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/AccessNetworkConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AccessNetworkType"
.end annotation


# static fields
.field public static final whitelist CDMA2000:I = 0x4

.field public static final whitelist EUTRAN:I = 0x3

.field public static final whitelist GERAN:I = 0x1

.field public static final whitelist IWLAN:I = 0x5

.field public static final whitelist NGRAN:I = 0x6

.field public static final whitelist UNKNOWN:I = 0x0

.field public static final whitelist UTRAN:I = 0x2


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist fromString(Ljava/lang/String;)I
    .registers 10
    .param p0, "str"    # Ljava/lang/String;

    .line 118
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    sparse-switch v1, :sswitch_data_80

    :cond_14
    goto :goto_5b

    :sswitch_15
    const-string v1, "EUTRAN"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v5

    goto :goto_5c

    :sswitch_1f
    const-string v1, "UNKNOWN"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v8

    goto :goto_5c

    :sswitch_29
    const-string v1, "UTRAN"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v6

    goto :goto_5c

    :sswitch_33
    const-string v1, "NGRAN"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v2

    goto :goto_5c

    :sswitch_3d
    const-string v1, "IWLAN"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v3

    goto :goto_5c

    :sswitch_47
    const-string v1, "GERAN"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v7

    goto :goto_5c

    :sswitch_51
    const-string v1, "CDMA2000"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v4

    goto :goto_5c

    :goto_5b
    const/4 v0, -0x1

    :goto_5c
    packed-switch v0, :pswitch_data_9e

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid access network type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :pswitch_78
    return v2

    .line 124
    :pswitch_79
    return v3

    .line 123
    :pswitch_7a
    return v4

    .line 122
    :pswitch_7b
    return v5

    .line 121
    :pswitch_7c
    return v6

    .line 120
    :pswitch_7d
    return v7

    .line 119
    :pswitch_7e
    return v8

    nop

    :sswitch_data_80
    .sparse-switch
        -0x3bd8f00d -> :sswitch_51
        0x4091e61 -> :sswitch_47
        0x42d658b -> :sswitch_3d
        0x46caba6 -> :sswitch_33
        0x4d53900 -> :sswitch_29
        0x19d1382a -> :sswitch_1f
        0x7a939bdb -> :sswitch_15
    .end sparse-switch

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
    .end packed-switch
.end method

.method public static blacklist toString(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .line 104
    packed-switch p0, :pswitch_data_1e

    .line 112
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 111
    :pswitch_8
    const-string v0, "NGRAN"

    return-object v0

    .line 110
    :pswitch_b
    const-string v0, "IWLAN"

    return-object v0

    .line 109
    :pswitch_e
    const-string v0, "CDMA2000"

    return-object v0

    .line 108
    :pswitch_11
    const-string v0, "EUTRAN"

    return-object v0

    .line 107
    :pswitch_14
    const-string v0, "UTRAN"

    return-object v0

    .line 106
    :pswitch_17
    const-string v0, "GERAN"

    return-object v0

    .line 105
    :pswitch_1a
    const-string v0, "UNKNOWN"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method
