.class public Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;
.super Ljava/lang/Object;
.source "Phonemetadata.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc$Builder;
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field private blacklist exampleNumber_:Ljava/lang/String;

.field private blacklist hasExampleNumber:Z

.field private blacklist hasNationalNumberPattern:Z

.field private blacklist nationalNumberPattern_:Ljava/lang/String;

.field private blacklist possibleLengthLocalOnly_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist possibleLength_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->nationalNumberPattern_:Ljava/lang/String;

    .line 250
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleLength_:Ljava/util/List;

    .line 268
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleLengthLocalOnly_:Ljava/util/List;

    .line 287
    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->exampleNumber_:Ljava/lang/String;

    return-void
.end method

.method public static blacklist newBuilder()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc$Builder;
    .registers 1

    .line 230
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public blacklist addPossibleLength(I)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 3

    .line 259
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleLength_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist addPossibleLengthLocalOnly(I)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 3

    .line 277
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleLengthLocalOnly_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist clearExampleNumber()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 2

    const/4 v0, 0x0

    .line 296
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber:Z

    .line 297
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->exampleNumber_:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist clearNationalNumberPattern()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 2

    const/4 v0, 0x0

    .line 244
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern:Z

    .line 245
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->nationalNumberPattern_:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist clearPossibleLength()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 2

    .line 263
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleLength_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public blacklist clearPossibleLengthLocalOnly()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 2

    .line 281
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleLengthLocalOnly_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public blacklist exactlySameAs(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z
    .registers 4

    .line 302
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->nationalNumberPattern_:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->nationalNumberPattern_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleLength_:Ljava/util/List;

    iget-object v1, p1, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleLength_:Ljava/util/List;

    .line 303
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleLengthLocalOnly_:Ljava/util/List;

    iget-object v1, p1, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleLengthLocalOnly_:Ljava/util/List;

    .line 304
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->exampleNumber_:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->exampleNumber_:Ljava/lang/String;

    .line 305
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2a

    const/4 p0, 0x1

    return p0

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getExampleNumber()Ljava/lang/String;
    .registers 1

    .line 289
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->exampleNumber_:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getNationalNumberPattern()Ljava/lang/String;
    .registers 1

    .line 237
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->nationalNumberPattern_:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getPossibleLength(I)I
    .registers 2

    .line 256
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleLength_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public blacklist getPossibleLengthCount()I
    .registers 1

    .line 254
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleLength_:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public blacklist getPossibleLengthList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 252
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleLength_:Ljava/util/List;

    return-object p0
.end method

.method public blacklist getPossibleLengthLocalOnly(I)I
    .registers 2

    .line 274
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleLengthLocalOnly_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public blacklist getPossibleLengthLocalOnlyCount()I
    .registers 1

    .line 272
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleLengthLocalOnly_:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public blacklist getPossibleLengthLocalOnlyList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 270
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleLengthLocalOnly_:Ljava/util/List;

    return-object p0
.end method

.method public blacklist hasExampleNumber()Z
    .registers 1

    .line 288
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber:Z

    return p0
.end method

.method public blacklist hasNationalNumberPattern()Z
    .registers 1

    .line 236
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern:Z

    return p0
.end method

.method public whitelist test-api readExternal(Ljava/io/ObjectInput;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 333
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 334
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->setNationalNumberPattern(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 337
    :cond_d
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_13
    if-ge v2, v0, :cond_25

    .line 339
    iget-object v3, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleLength_:Ljava/util/List;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 342
    :cond_25
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    :goto_29
    if-ge v1, v0, :cond_3b

    .line 344
    iget-object v2, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleLengthLocalOnly_:Ljava/util/List;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 347
    :cond_3b
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 348
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->setExampleNumber(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    :cond_48
    return-void
.end method

.method public blacklist setExampleNumber(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 3

    const/4 v0, 0x1

    .line 291
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber:Z

    .line 292
    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->exampleNumber_:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setNationalNumberPattern(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 3

    const/4 v0, 0x1

    .line 239
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern:Z

    .line 240
    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->nationalNumberPattern_:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api writeExternal(Ljava/io/ObjectOutput;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 310
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern:Z

    if-eqz v0, :cond_e

    .line 311
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->nationalNumberPattern_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 314
    :cond_e
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthCount()I

    move-result v0

    .line 315
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_17
    if-ge v2, v0, :cond_2b

    .line 317
    iget-object v3, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleLength_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeInt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 320
    :cond_2b
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthLocalOnlyCount()I

    move-result v0

    .line 321
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    :goto_32
    if-ge v1, v0, :cond_46

    .line 323
    iget-object v2, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleLengthLocalOnly_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 326
    :cond_46
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 327
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber:Z

    if-eqz v0, :cond_54

    .line 328
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->exampleNumber_:Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    :cond_54
    return-void
.end method
