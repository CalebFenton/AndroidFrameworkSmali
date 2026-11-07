.class interface abstract Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;
.super Ljava/lang/Object;
.source "SerializedComposedEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "SerializedSegment"
.end annotation


# virtual methods
.method public abstract blacklist deserializeIntoComposition(Landroid/os/VibrationEffect$Composition;)V
.end method

.method public abstract blacklist write(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
