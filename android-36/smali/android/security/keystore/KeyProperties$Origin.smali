.class public abstract Landroid/security/keystore/KeyProperties$Origin;
.super Ljava/lang/Object;
.source "KeyProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/KeyProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Origin"
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o fromKeymaster(I)I
    .registers 4
    .param p0, "origin"    # I

    .line 795
    packed-switch p0, :pswitch_data_26

    .line 805
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown origin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 803
    :pswitch_1c
    const/16 v0, 0x8

    return v0

    .line 801
    :pswitch_1f
    const/4 v0, 0x4

    return v0

    .line 799
    :pswitch_21
    const/4 v0, 0x2

    return v0

    .line 797
    :pswitch_23
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_23
        :pswitch_3
        :pswitch_21
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method
