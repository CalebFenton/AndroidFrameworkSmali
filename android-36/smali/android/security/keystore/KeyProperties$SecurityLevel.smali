.class public abstract Landroid/security/keystore/KeyProperties$SecurityLevel;
.super Ljava/lang/Object;
.source "KeyProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/KeyProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SecurityLevel"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 883
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist fromKeymaster(I)I
    .registers 4
    .param p0, "securityLevel"    # I

    .line 907
    packed-switch p0, :pswitch_data_22

    .line 915
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported security level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 913
    :pswitch_1c
    const/4 v0, 0x2

    return v0

    .line 911
    :pswitch_1e
    const/4 v0, 0x1

    return v0

    .line 909
    :pswitch_20
    const/4 v0, 0x0

    return v0

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1e
        :pswitch_1c
    .end packed-switch
.end method

.method public static blacklist toKeymaster(I)I
    .registers 4
    .param p0, "securityLevel"    # I

    .line 889
    packed-switch p0, :pswitch_data_22

    .line 897
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported security level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 895
    :pswitch_1c
    const/4 v0, 0x2

    return v0

    .line 893
    :pswitch_1e
    const/4 v0, 0x1

    return v0

    .line 891
    :pswitch_20
    const/4 v0, 0x0

    return v0

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1e
        :pswitch_1c
    .end packed-switch
.end method
