.class public abstract Landroid/net/eap/EapSessionConfig$EapMethodConfig;
.super Ljava/lang/Object;
.source "EapSessionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/eap/EapSessionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EapMethodConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/eap/EapSessionConfig$EapMethodConfig$EapMethod;
    }
.end annotation


# static fields
.field public static final whitelist EAP_TYPE_AKA:I = 0x17

.field public static final whitelist EAP_TYPE_AKA_PRIME:I = 0x32

.field public static final whitelist EAP_TYPE_MSCHAP_V2:I = 0x1a

.field public static final whitelist EAP_TYPE_SIM:I = 0x12

.field public static final whitelist EAP_TYPE_TTLS:I = 0x15

.field private static final blacklist METHOD_TYPE:Ljava/lang/String; = "methodType"


# instance fields
.field private final blacklist mMethodType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmMethodType(Landroid/net/eap/EapSessionConfig$EapMethodConfig;)I
    .registers 1

    iget p0, p0, Landroid/net/eap/EapSessionConfig$EapMethodConfig;->mMethodType:I

    return p0
.end method

.method constructor blacklist <init>(I)V
    .registers 2
    .param p1, "methodType"    # I

    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    iput p1, p0, Landroid/net/eap/EapSessionConfig$EapMethodConfig;->mMethodType:I

    .line 450
    return-void
.end method

.method public static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/eap/EapSessionConfig$EapMethodConfig;
    .registers 5
    .param p0, "in"    # Landroid/os/PersistableBundle;

    .line 459
    const-string v0, "PersistableBundle is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 461
    const-string v0, "methodType"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 462
    .local v0, "methodType":I
    sparse-switch v0, :sswitch_data_40

    .line 474
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid EAP Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 468
    :sswitch_27
    invoke-static {p0}, Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;

    move-result-object v1

    return-object v1

    .line 470
    :sswitch_2c
    invoke-static {p0}, Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;

    move-result-object v1

    return-object v1

    .line 466
    :sswitch_31
    invoke-static {p0}, Landroid/net/eap/EapSessionConfig$EapAkaConfig;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/eap/EapSessionConfig$EapAkaConfig;

    move-result-object v1

    return-object v1

    .line 472
    :sswitch_36
    invoke-static {p0}, Landroid/net/eap/EapSessionConfig$EapTtlsConfig;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/eap/EapSessionConfig$EapTtlsConfig;

    move-result-object v1

    return-object v1

    .line 464
    :sswitch_3b
    invoke-static {p0}, Landroid/net/eap/EapSessionConfig$EapSimConfig;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/eap/EapSessionConfig$EapSimConfig;

    move-result-object v1

    return-object v1

    :sswitch_data_40
    .sparse-switch
        0x12 -> :sswitch_3b
        0x15 -> :sswitch_36
        0x17 -> :sswitch_31
        0x1a -> :sswitch_2c
        0x32 -> :sswitch_27
    .end sparse-switch
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 522
    instance-of v0, p1, Landroid/net/eap/EapSessionConfig$EapMethodConfig;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 523
    return v1

    .line 526
    :cond_6
    iget v0, p0, Landroid/net/eap/EapSessionConfig$EapMethodConfig;->mMethodType:I

    move-object v2, p1

    check-cast v2, Landroid/net/eap/EapSessionConfig$EapMethodConfig;

    iget v2, v2, Landroid/net/eap/EapSessionConfig$EapMethodConfig;->mMethodType:I

    if-ne v0, v2, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method public whitelist getMethodType()I
    .registers 2

    .line 496
    iget v0, p0, Landroid/net/eap/EapSessionConfig$EapMethodConfig;->mMethodType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 516
    iget v0, p0, Landroid/net/eap/EapSessionConfig$EapMethodConfig;->mMethodType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isEapOnlySafeMethod()Z
    .registers 2

    .line 510
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist toPersistableBundle()Landroid/os/PersistableBundle;
    .registers 4

    .line 485
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 486
    .local v0, "result":Landroid/os/PersistableBundle;
    const-string v1, "methodType"

    iget v2, p0, Landroid/net/eap/EapSessionConfig$EapMethodConfig;->mMethodType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 487
    return-object v0
.end method
