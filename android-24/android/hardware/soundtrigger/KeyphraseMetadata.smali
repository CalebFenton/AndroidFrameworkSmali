.class public Landroid/hardware/soundtrigger/KeyphraseMetadata;
.super Ljava/lang/Object;
.source "KeyphraseMetadata.java"


# instance fields
.field public final id:I

.field public final keyphrase:Ljava/lang/String;

.field public final recognitionModeFlags:I

.field public final supportedLocales:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/util/ArraySet;I)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "keyphrase"    # Ljava/lang/String;
    .param p4, "recognitionModeFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/util/Locale;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 34
    .local p3, "supportedLocales":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/util/Locale;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 36
    iput p1, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->id:I

    #@5
    .line 37
    iput-object p2, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->keyphrase:Ljava/lang/String;

    #@7
    .line 38
    iput-object p3, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->supportedLocales:Landroid/util/ArraySet;

    #@9
    .line 39
    iput p4, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->recognitionModeFlags:I

    #@b
    .line 35
    return-void
.end method


# virtual methods
.method public supportsLocale(Ljava/util/Locale;)Z
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 59
    iget-object v0, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->supportedLocales:Landroid/util/ArraySet;

    #@2
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    iget-object v0, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->supportedLocales:Landroid/util/ArraySet;

    #@a
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x1

    #@10
    goto :goto_0
.end method

.method public supportsPhrase(Ljava/lang/String;)Z
    .locals 1
    .param p1, "phrase"    # Ljava/lang/String;

    #@0
    .prologue
    .line 52
    iget-object v0, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->keyphrase:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    iget-object v0, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->keyphrase:Ljava/lang/String;

    #@a
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x1

    #@10
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "id="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->id:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ", keyphrase="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->keyphrase:Ljava/lang/String;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, ", supported-locales="

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    iget-object v1, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->supportedLocales:Landroid/util/ArraySet;

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 45
    const-string/jumbo v1, ", recognition-modes="

    #@2f
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 45
    iget v1, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->recognitionModeFlags:I

    #@35
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    return-object v0
.end method
