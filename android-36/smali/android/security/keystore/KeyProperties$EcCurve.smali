.class public abstract Landroid/security/keystore/KeyProperties$EcCurve;
.super Ljava/lang/Object;
.source "KeyProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/KeyProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EcCurve"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 925
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist fromKeymasterCurve(I)I
    .registers 2
    .param p0, "ecCurve"    # I

    .line 950
    packed-switch p0, :pswitch_data_12

    .line 961
    const/4 v0, -0x1

    return v0

    .line 959
    :pswitch_5
    const/16 v0, 0x209

    return v0

    .line 957
    :pswitch_8
    const/16 v0, 0x180

    return v0

    .line 955
    :pswitch_b
    const/16 v0, 0x100

    return v0

    .line 952
    :pswitch_e
    const/16 v0, 0xe0

    return v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
        :pswitch_b
    .end packed-switch
.end method

.method public static blacklist toKeymasterCurve(Ljava/security/spec/ECParameterSpec;)I
    .registers 3
    .param p0, "spec"    # Ljava/security/spec/ECParameterSpec;

    .line 931
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result v0

    .line 932
    .local v0, "keySize":I
    sparse-switch v0, :sswitch_data_1a

    .line 942
    const/4 v1, -0x1

    return v1

    .line 940
    :sswitch_11
    const/4 v1, 0x3

    return v1

    .line 938
    :sswitch_13
    const/4 v1, 0x2

    return v1

    .line 936
    :sswitch_15
    const/4 v1, 0x1

    return v1

    .line 934
    :sswitch_17
    const/4 v1, 0x0

    return v1

    nop

    :sswitch_data_1a
    .sparse-switch
        0xe0 -> :sswitch_17
        0x100 -> :sswitch_15
        0x180 -> :sswitch_13
        0x209 -> :sswitch_11
    .end sparse-switch
.end method
