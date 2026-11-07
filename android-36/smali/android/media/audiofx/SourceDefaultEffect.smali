.class public Landroid/media/audiofx/SourceDefaultEffect;
.super Landroid/media/audiofx/DefaultEffect;
.source "SourceDefaultEffect.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SourceDefaultEffect-JAVA"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 33
    const-string v0, "audioeffect_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/UUID;Ljava/util/UUID;II)V
    .registers 13
    .param p1, "type"    # Ljava/util/UUID;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "priority"    # I
    .param p4, "source"    # I

    .line 64
    invoke-direct {p0}, Landroid/media/audiofx/DefaultEffect;-><init>()V

    .line 65
    const/4 v0, 0x1

    new-array v7, v0, [I

    .line 66
    .local v7, "id":[I
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 70
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v6

    .line 66
    move-object v1, p0

    move v4, p3

    move v5, p4

    .end local p3    # "priority":I
    .end local p4    # "source":I
    .local v4, "priority":I
    .local v5, "source":I
    invoke-direct/range {v1 .. v7}, Landroid/media/audiofx/SourceDefaultEffect;->native_setup(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;[I)I

    move-result p3

    .line 72
    .local p3, "initResult":I
    if-eqz p3, :cond_6f

    .line 73
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error code "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, " when initializing SourceDefaultEffect"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "SourceDefaultEffect-JAVA"

    invoke-static {v0, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    packed-switch p3, :pswitch_data_76

    .line 82
    new-instance p4, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot initialize effect engine for type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Error: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p4

    .line 76
    :pswitch_5f
    new-instance p4, Ljava/lang/IllegalArgumentException;

    const-string v0, "Source, type uuid, or implementation uuid not supported."

    invoke-direct {p4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p4

    .line 79
    :pswitch_67
    new-instance p4, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Effect library not loaded"

    invoke-direct {p4, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p4

    .line 88
    :cond_6f
    const/4 p4, 0x0

    aget p4, v7, p4

    iput p4, v1, Landroid/media/audiofx/SourceDefaultEffect;->mId:I

    .line 89
    return-void

    nop

    :pswitch_data_76
    .packed-switch -0x5
        :pswitch_67
        :pswitch_5f
    .end packed-switch
.end method

.method private final native blacklist native_release(I)V
.end method

.method private final native blacklist native_setup(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;[I)I
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .registers 1

    .line 103
    invoke-virtual {p0}, Landroid/media/audiofx/SourceDefaultEffect;->release()V

    .line 104
    return-void
.end method

.method public blacklist release()V
    .registers 2

    .line 98
    iget v0, p0, Landroid/media/audiofx/SourceDefaultEffect;->mId:I

    invoke-direct {p0, v0}, Landroid/media/audiofx/SourceDefaultEffect;->native_release(I)V

    .line 99
    return-void
.end method
