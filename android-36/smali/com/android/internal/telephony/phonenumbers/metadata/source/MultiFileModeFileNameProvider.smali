.class public final Lcom/android/internal/telephony/phonenumbers/metadata/source/MultiFileModeFileNameProvider;
.super Ljava/lang/Object;
.source "MultiFileModeFileNameProvider.java"

# interfaces
.implements Lcom/android/internal/telephony/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;


# instance fields
.field private final blacklist phoneMetadataFileNamePrefix:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/metadata/source/MultiFileModeFileNameProvider;->phoneMetadataFileNamePrefix:Ljava/lang/String;

    return-void
.end method

.method private blacklist isAlphanumeric(Ljava/lang/String;)Z
    .registers 6

    const/4 p0, 0x0

    if-eqz p1, :cond_23

    .line 42
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    goto :goto_23

    .line 48
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v1, p0

    :goto_f
    if-ge v1, v0, :cond_22

    .line 50
    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 51
    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v3

    if-nez v3, :cond_1c

    return p0

    .line 54
    :cond_1c
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_f

    :cond_22
    const/4 p0, 0x1

    :cond_23
    :goto_23
    return p0
.end method


# virtual methods
.method public blacklist getFor(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonenumbers/metadata/source/MultiFileModeFileNameProvider;->isAlphanumeric(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/metadata/source/MultiFileModeFileNameProvider;->phoneMetadataFileNamePrefix:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 36
    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid key: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
