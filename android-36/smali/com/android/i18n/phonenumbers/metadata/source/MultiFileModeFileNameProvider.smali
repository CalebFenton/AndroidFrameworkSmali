.class public final Lcom/android/i18n/phonenumbers/metadata/source/MultiFileModeFileNameProvider;
.super Ljava/lang/Object;
.source "MultiFileModeFileNameProvider.java"

# interfaces
.implements Lcom/android/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;


# instance fields
.field private final blacklist phoneMetadataFileNamePrefix:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "phoneMetadataFileNameBase"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/metadata/source/MultiFileModeFileNameProvider;->phoneMetadataFileNamePrefix:Ljava/lang/String;

    .line 32
    return-void
.end method

.method private blacklist isAlphanumeric(Ljava/lang/String;)Z
    .registers 7
    .param p1, "key"    # Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_24

    .line 50
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 51
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "charIdx":I
    :goto_f
    if-ge v2, v1, :cond_22

    .line 52
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 53
    .local v3, "codePoint":I
    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 54
    return v0

    .line 56
    :cond_1c
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 57
    .end local v3    # "codePoint":I
    goto :goto_f

    .line 58
    .end local v2    # "charIdx":I
    :cond_22
    const/4 v0, 0x1

    return v0

    .line 45
    .end local v1    # "size":I
    :cond_24
    :goto_24
    return v0
.end method


# virtual methods
.method public blacklist getFor(Ljava/lang/Object;)Ljava/lang/String;
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;

    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "keyAsString":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/metadata/source/MultiFileModeFileNameProvider;->isAlphanumeric(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/i18n/phonenumbers/metadata/source/MultiFileModeFileNameProvider;->phoneMetadataFileNamePrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 38
    :cond_1e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
