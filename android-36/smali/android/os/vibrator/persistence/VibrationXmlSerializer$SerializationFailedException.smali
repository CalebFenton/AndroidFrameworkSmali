.class public final Landroid/os/vibrator/persistence/VibrationXmlSerializer$SerializationFailedException;
.super Ljava/io/IOException;
.source "VibrationXmlSerializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/vibrator/persistence/VibrationXmlSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SerializationFailedException"
.end annotation


# direct methods
.method private constructor blacklist <init>(Landroid/os/VibrationEffect;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "effect"    # Landroid/os/VibrationEffect;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Serialization failed for vibration effect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/VibrationEffect;Ljava/lang/Throwable;Landroid/os/vibrator/persistence/VibrationXmlSerializer-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/os/vibrator/persistence/VibrationXmlSerializer$SerializationFailedException;-><init>(Landroid/os/VibrationEffect;Ljava/lang/Throwable;)V

    return-void
.end method
