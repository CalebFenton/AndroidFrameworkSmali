.class final Lcom/android/internal/vibrator/persistence/SerializedVendorEffect;
.super Ljava/lang/Object;
.source "SerializedVendorEffect.java"

# interfaces
.implements Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/vibrator/persistence/SerializedVendorEffect$Parser;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/vibrator/persistence/XmlSerializedVibration<",
        "Landroid/os/VibrationEffect$VendorEffect;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mVendorData:Landroid/os/PersistableBundle;


# direct methods
.method constructor blacklist <init>(Landroid/os/PersistableBundle;)V
    .registers 2
    .param p1, "vendorData"    # Landroid/os/PersistableBundle;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iput-object p1, p0, Lcom/android/internal/vibrator/persistence/SerializedVendorEffect;->mVendorData:Landroid/os/PersistableBundle;

    .line 54
    return-void
.end method


# virtual methods
.method public blacklist deserialize()Landroid/os/VibrationEffect$VendorEffect;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/android/internal/vibrator/persistence/SerializedVendorEffect;->mVendorData:Landroid/os/PersistableBundle;

    invoke-static {v0}, Landroid/os/VibrationEffect;->createVendorEffect(Landroid/os/PersistableBundle;)Landroid/os/VibrationEffect;

    move-result-object v0

    check-cast v0, Landroid/os/VibrationEffect$VendorEffect;

    return-object v0
.end method

.method public bridge synthetic blacklist deserialize()Ljava/lang/Object;
    .registers 2

    .line 46
    invoke-virtual {p0}, Lcom/android/internal/vibrator/persistence/SerializedVendorEffect;->deserialize()Landroid/os/VibrationEffect$VendorEffect;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SerializedVendorEffect{vendorData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/vibrator/persistence/SerializedVendorEffect;->mVendorData:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

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

    .line 66
    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v1, "vibration-effect"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/internal/vibrator/persistence/SerializedVendorEffect;->writeContent(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 68
    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 69
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

    .line 73
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 74
    .local v0, "outputStream":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lcom/android/internal/vibrator/persistence/SerializedVendorEffect;->mVendorData:Landroid/os/PersistableBundle;

    invoke-virtual {v1, v0}, Landroid/os/PersistableBundle;->writeToStream(Ljava/io/OutputStream;)V

    .line 76
    sget-object v1, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v2, "vendor-effect"

    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 77
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 78
    sget-object v1, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 79
    return-void
.end method
