.class public final Landroid/adservices/common/Module;
.super Ljava/lang/Object;
.source "Module.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/common/Module$ModuleCode;
    }
.end annotation


# static fields
.field public static final blacklist ADID:I = 0x5

.field public static final blacklist MEASUREMENT:I = 0x0

.field public static final blacklist ON_DEVICE_PERSONALIZATION:I = 0x4

.field public static final blacklist PROTECTED_APP_SIGNALS:I = 0x2

.field public static final blacklist PROTECTED_AUDIENCE:I = 0x1

.field public static final blacklist TOPICS:I = 0x3


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist validate(I)I
    .registers 4
    .param p0, "module"    # I

    .line 86
    packed-switch p0, :pswitch_data_1e

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Module Code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :pswitch_1c
    nop

    .line 86
    return p0

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method
