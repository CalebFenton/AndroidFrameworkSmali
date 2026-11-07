.class Ljava/lang/invoke/MethodHandleNatives;
.super Ljava/lang/Object;
.source "MethodHandleNatives.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/invoke/MethodHandleNatives$Constants;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 36
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist initCauseFrom(Ljava/lang/Error;Ljava/lang/Exception;)Ljava/lang/Error;
    .registers 5
    .param p1, "ex"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Error;",
            ">(TE;",
            "Ljava/lang/Exception;",
            ")TE;"
        }
    .end annotation

    .line 537
    .local p0, "err":Ljava/lang/Error;, "TE;"
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 539
    .local v0, "th":Ljava/lang/Throwable;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 540
    .local v1, "Eclass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 541
    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Error;

    return-object v2

    .line 542
    :cond_15
    if-nez v0, :cond_19

    move-object v2, p1

    goto :goto_1a

    :cond_19
    move-object v2, v0

    :goto_1a
    invoke-virtual {p0, v2}, Ljava/lang/Error;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 543
    return-object p0
.end method

.method static blacklist mapLookupExceptionToError(Ljava/lang/ReflectiveOperationException;)Ljava/lang/LinkageError;
    .registers 4
    .param p0, "ex"    # Ljava/lang/ReflectiveOperationException;

    .line 515
    instance-of v0, p0, Ljava/lang/IllegalAccessException;

    if-eqz v0, :cond_1a

    .line 516
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 517
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v1, v0, Ljava/lang/AbstractMethodError;

    if-eqz v1, :cond_10

    .line 518
    move-object v1, v0

    check-cast v1, Ljava/lang/AbstractMethodError;

    return-object v1

    .line 520
    :cond_10
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    .line 522
    .end local v0    # "cause":Ljava/lang/Throwable;
    .local v1, "err":Ljava/lang/LinkageError;
    goto :goto_3e

    .end local v1    # "err":Ljava/lang/LinkageError;
    :cond_1a
    instance-of v0, p0, Ljava/lang/NoSuchMethodException;

    if-eqz v0, :cond_29

    .line 523
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .restart local v1    # "err":Ljava/lang/LinkageError;
    goto :goto_3e

    .line 524
    .end local v1    # "err":Ljava/lang/LinkageError;
    :cond_29
    instance-of v0, p0, Ljava/lang/NoSuchFieldException;

    if-eqz v0, :cond_38

    .line 525
    new-instance v0, Ljava/lang/NoSuchFieldError;

    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .restart local v1    # "err":Ljava/lang/LinkageError;
    goto :goto_3e

    .line 527
    .end local v1    # "err":Ljava/lang/LinkageError;
    :cond_38
    new-instance v0, Ljava/lang/IncompatibleClassChangeError;

    invoke-direct {v0}, Ljava/lang/IncompatibleClassChangeError;-><init>()V

    move-object v1, v0

    .line 529
    .restart local v1    # "err":Ljava/lang/LinkageError;
    :goto_3e
    invoke-static {v1, p0}, Ljava/lang/invoke/MethodHandleNatives;->initCauseFrom(Ljava/lang/Error;Ljava/lang/Exception;)Ljava/lang/Error;

    move-result-object v0

    check-cast v0, Ljava/lang/LinkageError;

    return-object v0
.end method

.method static blacklist refKindIsField(B)Z
    .registers 2
    .param p0, "refKind"    # B

    .line 199
    nop

    .line 200
    const/4 v0, 0x4

    if-gt p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method static blacklist refKindIsValid(I)Z
    .registers 2
    .param p0, "refKind"    # I

    .line 196
    if-lez p0, :cond_8

    const/16 v0, 0xa

    if-ge p0, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static blacklist refKindName(B)Ljava/lang/String;
    .registers 2
    .param p0, "refKind"    # B

    .line 243
    nop

    .line 244
    packed-switch p0, :pswitch_data_22

    .line 254
    const-string v0, "REF_???"

    return-object v0

    .line 253
    :pswitch_7
    const-string v0, "invokeInterface"

    return-object v0

    .line 252
    :pswitch_a
    const-string v0, "newInvokeSpecial"

    return-object v0

    .line 251
    :pswitch_d
    const-string v0, "invokeSpecial"

    return-object v0

    .line 250
    :pswitch_10
    const-string v0, "invokeStatic"

    return-object v0

    .line 249
    :pswitch_13
    const-string v0, "invokeVirtual"

    return-object v0

    .line 248
    :pswitch_16
    const-string v0, "putStatic"

    return-object v0

    .line 247
    :pswitch_19
    const-string v0, "putField"

    return-object v0

    .line 246
    :pswitch_1c
    const-string v0, "getStatic"

    return-object v0

    .line 245
    :pswitch_1f
    const-string v0, "getField"

    return-object v0

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_a
        :pswitch_7
    .end packed-switch
.end method
