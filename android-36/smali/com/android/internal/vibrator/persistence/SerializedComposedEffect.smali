.class final Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
.super Ljava/lang/Object;
.source "SerializedComposedEffect.java"

# interfaces
.implements Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/vibrator/persistence/XmlSerializedVibration<",
        "Landroid/os/VibrationEffect$Composed;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mSegments:[Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V
    .registers 4
    .param p1, "segment"    # Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;->mSegments:[Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;

    .line 47
    return-void
.end method

.method constructor blacklist <init>([Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V
    .registers 4
    .param p1, "segments"    # [Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    array-length v0, p1

    if-lez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    const-string v1, "Unsupported empty vibration"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 52
    iput-object p1, p0, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;->mSegments:[Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;

    .line 53
    return-void
.end method


# virtual methods
.method public blacklist deserialize()Landroid/os/VibrationEffect$Composed;
    .registers 6

    .line 58
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    .line 59
    .local v0, "composition":Landroid/os/VibrationEffect$Composition;
    iget-object v1, p0, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;->mSegments:[Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v2, :cond_12

    aget-object v4, v1, v3

    .line 60
    .local v4, "segment":Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;
    invoke-interface {v4, v0}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;->deserializeIntoComposition(Landroid/os/VibrationEffect$Composition;)V

    .line 59
    .end local v4    # "segment":Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 62
    :cond_12
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object v1

    check-cast v1, Landroid/os/VibrationEffect$Composed;

    return-object v1
.end method

.method public bridge synthetic blacklist deserialize()Ljava/lang/Object;
    .registers 2

    .line 39
    invoke-virtual {p0}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;->deserialize()Landroid/os/VibrationEffect$Composed;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SerializedComposedEffect{segments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;->mSegments:[Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;

    .line 83
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    return-object v0
.end method

.method public blacklist write(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 4
    .param p1, "serializer"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v1, "vibration-effect"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;->writeContent(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 70
    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 71
    return-void
.end method

.method public blacklist writeContent(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 6
    .param p1, "serializer"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;->mSegments:[Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 76
    .local v3, "segment":Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;
    invoke-interface {v3, p1}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;->write(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 75
    .end local v3    # "segment":Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 78
    :cond_e
    return-void
.end method
